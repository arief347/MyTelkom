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
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.ComplaitLevel;
import com.neuron.mytelkom.model.Customer;
import com.neuron.mytelkom.model.Product;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;

public class CreateTicketActivity extends BaseActivity
{

    public static String KEY_PRODUCT = "Product";
    public static String KEY_PRODUCT_TYPE = "ProductType";
    private Button btnCancel;
    private Button btnSubmit;
    ProgressDialog dialog;
    private EditText edtEmail;
    private EditText edtKeluhan;
    private EditText edtKontak;
    private EditText edtLokasi;
    private EditText edtNoProduct;
    private EditText edtPelapor;
    private boolean isReg23;
    private ArrayList listLevel1;
    private ArrayList listLevel2;
    private LinearLayout lnPengaduanDetilLevel1;
    private LinearLayout lnPengaduanDetilLevel2;
    public Product product;
    public String productType;
    String reg;
    private Spinner spnJenisPengaduan;
    private Spinner spnJenisPengaduanDetail;
    private Spinner spnJenisTiket;
    public AddNewProductActivity.ProductType type;

    public CreateTicketActivity()
    {
        isReg23 = false;
        listLevel1 = new ArrayList();
        listLevel2 = new ArrayList();
    }

    private String getRegionalCode(AddNewProductActivity.ProductType producttype, String s)
    {
        String as[][];
        String s1;
        String s5;
        int i;
        as = (new String[][] {
            new String[] {
                "4", "7"
            }, new String[] {
                "9", "7"
            }, new String[] {
                "5", "6"
            }, new String[] {
                "6", "1"
            }, new String[] {
                "7", "1"
            }, new String[] {
                "31", "5"
            }, new String[] {
                "32", "5"
            }, new String[] {
                "33", "5"
            }, new String[] {
                "34", "5"
            }, new String[] {
                "35", "5"
            }, new String[] {
                "36", "7"
            }, new String[] {
                "37", "7"
            }, new String[] {
                "38", "7"
            }, new String[] {
                "21", "2"
            }, new String[] {
                "22", "3"
            }, new String[] {
                "23", "3"
            }, new String[] {
                "24", "4"
            }, new String[] {
                "27", "4"
            }, new String[] {
                "28", "4"
            }, new String[] {
                "29", "4"
            }, new String[] {
                "260", "3"
            }, new String[] {
                "261", "3"
            }, new String[] {
                "262", "3"
            }, new String[] {
                "263", "3"
            }, new String[] {
                "264", "2"
            }, new String[] {
                "265", "3"
            }, new String[] {
                "266", "3"
            }, new String[] {
                "267", "2"
            }, new String[] {
                "251", "2"
            }, new String[] {
                "254", "2"
            }, new String[] {
                "252", "3"
            }, new String[] {
                "253", "3"
            }
        });
        AddNewProductActivity.ProductType producttype1 = AddNewProductActivity.ProductType.SPEEDY;
        s1 = null;
        if (producttype == producttype1)
        {
            String s6 = s.substring(0, 2);
            String s2;
            if (s6.equals("12") || s6.equals("13"))
            {
                s1 = "REG23";
                isReg23 = true;
            } else
            {
                s1 = "NONREG23";
            }
        }
        if (producttype != AddNewProductActivity.ProductType.FLEXI && producttype != AddNewProductActivity.ProductType.PTSN) goto _L2; else goto _L1
_L1:
        s2 = s.substring(1, 1);
        String s3 = s.substring(1, 2);
        String s4 = s.substring(1, 3);
        s.substring(0, 3);
        if (s2.equals("4") || s2.equals("5") || s2.equals("6") || s2.equals("7") || s2.equals("9"))
        {
            s5 = s2;
        } else
        if (s3.equals("25") || s3.equals("26"))
        {
            s5 = s4;
        } else
        {
            s5 = s3;
        }
        if (s5.equals("2") || s5.equals("3"))
        {
            isReg23 = true;
        }
        Utils.printLog(s5);
        i = 0;
_L7:
        if (i < as.length) goto _L4; else goto _L3
_L3:
        if (!isReg23)
        {
            lnPengaduanDetilLevel1.setVisibility(8);
            lnPengaduanDetilLevel2.setVisibility(8);
        }
_L2:
        return s1;
_L4:
        if (!s5.equals(as[i][1]))
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = as[i][0];
        if (true) goto _L3; else goto _L5
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void postComplaint()
    {
        dialog.show();
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject();
        jsonobject.put("dataType", Utils.encodedParam(""));
        jsonobject.put("dataSource", Utils.encodedParam(""));
        jsonobject1 = new JSONObject();
        jsonobject1.put("supportregphone", product.getProductNo());
        jsonobject1.put("telkomID", preference.getUsername().toLowerCase(Locale.ENGLISH));
        String s = "";
        if (type != AddNewProductActivity.ProductType.SPEEDY) goto _L2; else goto _L1
_L1:
        s = "11";
_L5:
        try
        {
            jsonobject1.put("supportprod", s);
            jsonobject1.put("supportregphone", edtNoProduct.getText().toString().trim());
            jsonobject1.put("supportticket3", Utils.encodedParam(((ComplaitLevel)listLevel2.get(spnJenisPengaduanDetail.getSelectedItemPosition())).getLevel()));
            jsonobject1.put("supportdesc", edtKeluhan.getText().toString().trim());
            jsonobject1.put("supportprodtype", Utils.encodedParam(productType));
            jsonobject1.put("supporttype", Utils.encodedParam("ZSRT"));
            jsonobject1.put("supporttickettype", Utils.encodedParam(""));
            jsonobject1.put("supportsubtickettype", Utils.encodedParam(""));
            jsonobject1.put("supportlocation", Utils.encodedParam(edtLokasi.getText().toString().trim()));
            jsonobject1.put("supportname", edtPelapor.getText().toString().trim());
            jsonobject1.put("supportphone", Utils.encodedParam(edtKontak.getText().toString().trim()));
            jsonobject1.put("supportemail", edtEmail.getText().toString().trim());
            jsonobject.put("dataParameter", jsonobject1);
            jsonobject.put("transactionID", Utils.encodedParam(""));
            jsonobject.put("statusCode", Utils.encodedParam(""));
            jsonobject.put("strMessage", Utils.encodedParam(""));
            String s1 = jsonobject.toString();
            Utils.printLog(s1);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s1);
            asyncHttpClient.post("https://my.telkom.co.id/api/MTComplaint.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final CreateTicketActivity this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Utils.showToast(CreateTicketActivity.this, "Error in creating ticket");
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = CreateTicketActivity.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        break MISSING_BLOCK_LABEL_496;
_L2:
        if (type != AddNewProductActivity.ProductType.PTSN) goto _L4; else goto _L3
_L3:
        s = "1";
          goto _L5
_L4:
        if (type != AddNewProductActivity.ProductType.FLEXI) goto _L5; else goto _L6
_L6:
        s = "10000000";
          goto _L5
    }

    public static void toCreateTicketActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/CreateTicketActivity));
    }

    public static void toCreateTicketActivity(Activity activity, Product product1, AddNewProductActivity.ProductType producttype)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/CreateTicketActivity);
        intent.putExtra(KEY_PRODUCT, product1);
        intent.putExtra(KEY_PRODUCT_TYPE, producttype);
        activity.startActivityForResult(intent, 0);
    }

    protected void fetchComplaintList(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = jsonobject.getJSONArray("resmsg");
        if (jsonarray.length() <= 0) goto _L2; else goto _L3
_L3:
        int i = 0;
_L9:
        if (i < jsonarray.length()) goto _L5; else goto _L4
_L4:
        ArrayList arraylist = new ArrayList();
        int j = 0;
_L7:
        if (j >= listLevel1.size())
        {
            ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x109000a, 0x1020014, arraylist);
            spnJenisPengaduan.setAdapter(arrayadapter);
            getLevel2ComplaintList(((ComplaitLevel)listLevel1.get(-1 + listLevel1.size())).getLevel());
            return;
        }
          goto _L6
_L5:
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        ComplaitLevel complaitlevel = new ComplaitLevel();
        complaitlevel.setLevel(jsonobject1.getString("level2"));
        complaitlevel.setName(jsonobject1.getString("name"));
        listLevel1.add(complaitlevel);
        i++;
        continue; /* Loop/switch isn't completed */
_L6:
        arraylist.add(((ComplaitLevel)listLevel1.get(j)).getName());
        j++;
          goto _L7
        Exception exception;
        exception;
        Utils.printLog(exception.getMessage());
_L2:
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected void fetchComplaintListLevel2(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = jsonobject.getJSONArray("resmsg");
        if (jsonarray.length() <= 0) goto _L2; else goto _L3
_L3:
        int i = 0;
_L9:
        if (i < jsonarray.length()) goto _L5; else goto _L4
_L4:
        ArrayList arraylist = new ArrayList();
        int j = 0;
_L7:
        if (j >= listLevel2.size())
        {
            ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x109000a, 0x1020014, arraylist);
            spnJenisPengaduanDetail.setAdapter(arrayadapter);
            return;
        }
          goto _L6
_L5:
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        ComplaitLevel complaitlevel = new ComplaitLevel();
        complaitlevel.setLevel(jsonobject1.getString("level3"));
        complaitlevel.setName(jsonobject1.getString("name"));
        listLevel2.add(complaitlevel);
        i++;
        continue; /* Loop/switch isn't completed */
_L6:
        arraylist.add(((ComplaitLevel)listLevel2.get(j)).getName());
        j++;
          goto _L7
        Exception exception;
        exception;
        Utils.printLog(exception.getMessage());
_L2:
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        Utils.printLog(s);
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (jsonobject.getString("rescode").equals("00"))
        {
            Utils.showToast(this, jsonobject.getString("resmsg"));
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

    public void getLevel1ComplaintList()
    {
        dialog.show();
        JSONObject jsonobject = new JSONObject();
        if (!isReg23) goto _L2; else goto _L1
_L1:
        jsonobject.put("dataType", Utils.encodedParam("REG23"));
        jsonobject.put("dataSource", "");
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("prodType", Utils.encodedParam(productType));
        jsonobject2.put("parent", Utils.encodedParam(""));
        jsonobject2.put("level", Utils.encodedParam(""));
        jsonobject.put("dataParameter", jsonobject2);
_L5:
        jsonobject.put("transactionID", Utils.encodedParam(""));
        jsonobject.put("statusCode", Utils.encodedParam(""));
        jsonobject.put("strMessage", Utils.encodedParam(""));
        String s1 = jsonobject.toString();
        Utils.printLog(s1);
        RequestParams requestparams = new RequestParams();
        requestparams.put("param", s1);
        asyncHttpClient.post("https://my.telkom.co.id/api/MTComplaintList.php?api=", requestparams, new AsyncHttpResponseHandler() {

            final CreateTicketActivity this$0;

            public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
            {
                super.onFailure(i, aheader, abyte0, throwable);
                dialog.dismiss();
                Utils.showToast(CreateTicketActivity.this, "Error dalam mendapatkan complaint list");
            }

            public void onSuccess(int i, Header aheader[], byte abyte0[])
            {
                super.onSuccess(i, aheader, abyte0);
                dialog.dismiss();
                String s2 = new String(abyte0);
                Utils.printLog(s2);
                fetchComplaintList(s2);
            }

            
            {
                this$0 = CreateTicketActivity.this;
                super();
            }
        });
        return;
_L2:
        String s;
        JSONObject jsonobject1;
        try
        {
            jsonobject.put("dataType", Utils.encodedParam("NONREG23"));
            jsonobject.put("dataSource", "");
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
            return;
        }
        s = "";
        if (type != AddNewProductActivity.ProductType.SPEEDY) goto _L4; else goto _L3
_L3:
        s = "1";
_L8:
        jsonobject1 = new JSONObject();
        jsonobject1.put("prodType", Utils.encodedParam(s));
        jsonobject1.put("parent", Utils.encodedParam(""));
        jsonobject1.put("level", Utils.encodedParam(""));
        jsonobject.put("dataParameter", jsonobject1);
          goto _L5
_L4:
        if (type != AddNewProductActivity.ProductType.PTSN) goto _L7; else goto _L6
_L6:
        s = "11";
          goto _L8
_L7:
        if (type != AddNewProductActivity.ProductType.FLEXI) goto _L8; else goto _L9
_L9:
        s = "10000000";
          goto _L8
    }

    public void getLevel2ComplaintList(String s)
    {
        final ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Harap tunggu...");
        progressDialog.show();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("dataType", Utils.encodedParam("REG23"));
            jsonobject.put("dataSource", "");
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("prodType", "");
            jsonobject1.put("parent", Utils.encodedParam(s));
            jsonobject1.put("level", Utils.encodedParam("2"));
            jsonobject.put("dataParameter", jsonobject1);
            jsonobject.put("transactionID", Utils.encodedParam(""));
            jsonobject.put("statusCode", Utils.encodedParam(""));
            jsonobject.put("strMessage", Utils.encodedParam(""));
            String s1 = jsonobject.toString();
            Utils.printLog(s1);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s1);
            asyncHttpClient.post("https://my.telkom.co.id/api/MTComplaintList.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final CreateTicketActivity this$0;
                private final ProgressDialog val$progressDialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    progressDialog.dismiss();
                    Utils.showToast(CreateTicketActivity.this, "Error dalam mendapatkan complaint list");
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    progressDialog.dismiss();
                    String s2 = new String(abyte0);
                    Utils.printLog(s2);
                    fetchComplaintListLevel2(s2);
                }

            
            {
                this$0 = CreateTicketActivity.this;
                progressDialog = progressdialog;
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

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        product = (Product)getIntent().getSerializableExtra(KEY_PRODUCT);
        type = (AddNewProductActivity.ProductType)getIntent().getSerializableExtra(KEY_PRODUCT_TYPE);
        if (type == AddNewProductActivity.ProductType.SPEEDY)
        {
            productType = "SPEEDY";
            return;
        } else
        {
            productType = "PSTN";
            return;
        }
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnCancel.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateTicketActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = CreateTicketActivity.this;
                super();
            }
        });
        btnSubmit.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateTicketActivity this$0;

            public void onClick(View view)
            {
                postComplaint();
            }

            
            {
                this$0 = CreateTicketActivity.this;
                super();
            }
        });
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        reg = getRegionalCode(type, product.getFastel());
        if (reg != null)
        {
            Utils.printLog(reg);
        }
        getLevel1ComplaintList();
    }

    public void initializeViews()
    {
        super.initializeViews();
        spnJenisTiket = (Spinner)findViewById(0x7f0a001d);
        spnJenisPengaduan = (Spinner)findViewById(0x7f0a001f);
        spnJenisPengaduanDetail = (Spinner)findViewById(0x7f0a0021);
        btnCancel = (Button)findViewById(0x7f0a0027);
        btnSubmit = (Button)findViewById(0x7f0a0028);
        edtEmail = (EditText)findViewById(0x7f0a0025);
        edtKontak = (EditText)findViewById(0x7f0a0024);
        edtPelapor = (EditText)findViewById(0x7f0a0023);
        edtLokasi = (EditText)findViewById(0x7f0a0022);
        edtKeluhan = (EditText)findViewById(0x7f0a0026);
        edtNoProduct = (EditText)findViewById(0x7f0a001c);
        lnPengaduanDetilLevel1 = (LinearLayout)findViewById(0x7f0a001e);
        lnPengaduanDetilLevel2 = (LinearLayout)findViewById(0x7f0a0020);
        dialog = new ProgressDialog(this);
        dialog.setMessage("Harap tunggu...");
        dialog.setCancelable(false);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030005);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeLibs();
        initialiazeIntent();
        initializeViews();
        setToView();
        initializeRequest();
        initializeActions();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void setToView()
    {
        super.setToView();
        ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x109000a, 0x1020014, new String[] {
            "Pengaduan Teknis"
        });
        spnJenisTiket.setAdapter(arrayadapter);
        edtNoProduct.setText(product.getFastel());
        edtPelapor.setText(product.getCustomer().getName());
    }


}
