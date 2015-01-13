// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            LoginActivity

public class ActivationActivity extends BaseActivity
{

    private Button btnActivate;
    private EditText edtCode;
    private EditText edtUsername;

    public ActivationActivity()
    {
    }

    private void postActivation(String s, String s1)
    {
        if (s.equals("") || s1.equals(""))
        {
            Utils.showToast(this, "Fields can not be empty");
            return;
        }
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setMessage("Harap tunggu...");
        dialog.show();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("regusername", s);
            jsonobject.put("activation_code", s1);
            String s2 = jsonobject.toString();
            Utils.printLog(s2);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s2);
            asyncHttpClient.post("https://my.telkom.co.id/api/MTActivation.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final ActivationActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Utils.showToast(ActivationActivity.this, "Gagal melakukan aktivasi. Silakan coba lagi");
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    String s3 = new String(abyte0);
                    fetchResponse(s3);
                }

            
            {
                this$0 = ActivationActivity.this;
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

    public static void toActivationActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/ActivationActivity));
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (jsonobject.getString("rescode").equals("00"))
        {
            Utils.showToast(this, jsonobject.getString("resmsg"));
            LoginActivity.toLoginActivity(this);
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

    public void initializeActions()
    {
        super.initializeActions();
        btnActivate.setOnClickListener(new android.view.View.OnClickListener() {

            final ActivationActivity this$0;

            public void onClick(View view)
            {
                postActivation(edtUsername.getText().toString().trim(), edtCode.getText().toString().trim());
            }

            
            {
                this$0 = ActivationActivity.this;
                super();
            }
        });
    }

    public void initializeViews()
    {
        super.initializeViews();
        edtUsername = (EditText)findViewById(0x7f0a0000);
        edtCode = (EditText)findViewById(0x7f0a0001);
        btnActivate = (Button)findViewById(0x7f0a0002);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        initializeViews();
        initializeActions();
    }



}
