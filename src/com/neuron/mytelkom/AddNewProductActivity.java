// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.Locale;
import org.apache.http.Header;
import org.json.JSONObject;

public class AddNewProductActivity extends BaseActivity
{
    public static final class ProductType extends Enum
    {

        private static final ProductType ENUM$VALUES[];
        public static final ProductType FLEXI;
        public static final ProductType IME;
        public static final ProductType PTSN;
        public static final ProductType SPEEDY;

        public static ProductType valueOf(String s)
        {
            return (ProductType)Enum.valueOf(com/neuron/mytelkom/AddNewProductActivity$ProductType, s);
        }

        public static ProductType[] values()
        {
            ProductType aproducttype[] = ENUM$VALUES;
            int i = aproducttype.length;
            ProductType aproducttype1[] = new ProductType[i];
            System.arraycopy(aproducttype, 0, aproducttype1, 0, i);
            return aproducttype1;
        }

        static 
        {
            PTSN = new ProductType("PTSN", 0);
            SPEEDY = new ProductType("SPEEDY", 1);
            FLEXI = new ProductType("FLEXI", 2);
            IME = new ProductType("IME", 3);
            ProductType aproducttype[] = new ProductType[4];
            aproducttype[0] = PTSN;
            aproducttype[1] = SPEEDY;
            aproducttype[2] = FLEXI;
            aproducttype[3] = IME;
            ENUM$VALUES = aproducttype;
        }

        private ProductType(String s, int i)
        {
            super(s, i);
        }
    }


    public static int ADD_NEW_PRODUCT_CODE = 100;
    public static String NEW_PRODUCT_KEY = "NewProductSource";
    private Button btnSave;
    private CheckBox cbAgreement;
    private EditText edtNo;
    private String ownership[] = {
        "Pemilik", "Keluarga", "Penyewa Rumah", "Pembeli (Alih Kepemilikan)", "Lain-lain"
    };
    private String productType;
    private Spinner spnProductOwner;
    public TextView txtProductType;

    public AddNewProductActivity()
    {
        productType = "";
    }

    public static void toAddNewProductActivity(Activity activity, ProductType producttype)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/AddNewProductActivity);
        intent.putExtra(NEW_PRODUCT_KEY, producttype);
        activity.startActivityForResult(intent, ADD_NEW_PRODUCT_CODE);
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (jsonobject.getString("rescode").equals("00"))
        {
            Utils.showToast(this, jsonobject.getString("resmsg"));
            setResult(ADD_NEW_PRODUCT_CODE);
            finish();
            return;
        }
        try
        {
            Utils.showToast(this, jsonobject.getString("resmsg"));
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        return;
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x109000a, 0x1020014, ownership);
        spnProductOwner.setAdapter(arrayadapter);
        cbAgreement.setText("Dengan menyadari sepenuhnya akan segala akibatnya termasuk sanksi-sanksi sesuai dengan ketentuan perundang-undangan yang berlaku, saya menyatakan bahwa apa yang telah saya beritahukan diatas adalah informasi yang sebenar-benarnya");
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnSave.setOnClickListener(new android.view.View.OnClickListener() {

            final AddNewProductActivity this$0;

            public void onClick(View view)
            {
                if (cbAgreement.isChecked())
                {
                    if (edtNo.getText().toString().equals(""))
                    {
                        Utils.showToast(AddNewProductActivity.this, "Field tidak boleh kosong");
                        return;
                    } else
                    {
                        initializeRequest();
                        return;
                    }
                } else
                {
                    Utils.showToast(AddNewProductActivity.this, "Anda harus menyetujui semua syarat dan ketentuan yang ada");
                    return;
                }
            }

            
            {
                this$0 = AddNewProductActivity.this;
                super();
            }
        });
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setTitle("");
        dialog.setMessage("Harap tunggu...");
        String s = edtNo.getText().toString().trim();
        int i = 1 + spnProductOwner.getSelectedItemPosition();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomid", Utils.encodedParam(preference.getUsername().toLowerCase(Locale.getDefault())));
            jsonobject.put("addprodno", Utils.encodedParam(s));
            jsonobject.put("addprodrel", Utils.encodedParam(String.valueOf(i)));
            jsonobject.put("addprodtype", Utils.encodedParam(productType));
            Utils.printLog(jsonobject.toString());
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", jsonobject.toString());
            dialog.show();
            asyncHttpClient.post("https://my.telkom.co.id/api/MTaddProduct.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final AddNewProductActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int j, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(j, aheader, abyte0, throwable);
                    dialog.dismiss();
                }

                public void onSuccess(int j, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(j, aheader, abyte0);
                    dialog.dismiss();
                    String s1 = new String(abyte0);
                    Utils.printLog(s1);
                    fetchResponse(s1);
                }

            
            {
                this$0 = AddNewProductActivity.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
    }

    public void initializeViews()
    {
        super.initializeViews();
        txtProductType = (TextView)findViewById(0x7f0a004d);
        edtNo = (EditText)findViewById(0x7f0a004e);
        spnProductOwner = (Spinner)findViewById(0x7f0a004f);
        btnSave = (Button)findViewById(0x7f0a0051);
        cbAgreement = (CheckBox)findViewById(0x7f0a0050);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000f);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeViews();
        initialiazeIntent();
        setToView();
        initializeActions();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            setResult(ADD_NEW_PRODUCT_CODE);
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void setToView()
    {
        String s;
        super.setToView();
        s = "";
        if (!getIntent().getSerializableExtra(NEW_PRODUCT_KEY).equals(ProductType.PTSN)) goto _L2; else goto _L1
_L1:
        s = "Nomor Telepon Rumah";
        productType = "PSTN";
_L4:
        txtProductType.setText(s);
        return;
_L2:
        if (getIntent().getSerializableExtra(NEW_PRODUCT_KEY).equals(ProductType.SPEEDY))
        {
            s = "Nomor Speedy";
            productType = "SPEEDY";
        } else
        if (getIntent().getSerializableExtra(NEW_PRODUCT_KEY).equals(ProductType.FLEXI))
        {
            s = "FLEXI";
        } else
        if (getIntent().getSerializableExtra(NEW_PRODUCT_KEY).equals(ProductType.IME))
        {
            s = "IME";
        }
        if (true) goto _L4; else goto _L3
_L3:
    }



}
