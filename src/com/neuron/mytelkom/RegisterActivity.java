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
//            ActivationActivity

public class RegisterActivity extends BaseActivity
{

    private Button btnActivation;
    private Button btnRegister;
    private EditText edtEmail;
    private EditText edtName;
    private EditText edtPhone;
    private EditText edtUsername;

    public RegisterActivity()
    {
    }

    private void requestRegister(String s, String s1, String s2, String s3)
    {
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setMessage("Please wait...");
        dialog.setCancelable(true);
        dialog.show();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("regusername", s3);
            jsonobject.put("regemail", s2);
            jsonobject.put("regfullname", s);
            jsonobject.put("mobile1", s1);
            jsonobject.put("category", "");
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", jsonobject.toString());
            Utils.printLog(jsonobject.toString());
            asyncHttpClient.post("https://my.telkom.co.id/api/MTregistration.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final RegisterActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    dialog.dismiss();
                    super.onFailure(i, aheader, abyte0, throwable);
                    Utils.printLog("Error");
                    Utils.showToast(RegisterActivity.this, "Can not register at this time. Please try again");
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    JSONObject jsonobject1;
                    jsonobject1 = new JSONObject(new String(abyte0));
                    Utils.printLog(jsonobject1.toString());
                    if (jsonobject1.getString("rescode").equals("00"))
                    {
                        ActivationActivity.toActivationActivity(RegisterActivity.this);
                        return;
                    }
                    try
                    {
                        Utils.showToast(RegisterActivity.this, jsonobject1.getString("resmsg"));
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Utils.printLog(exception1.getMessage());
                    }
                    return;
                }

            
            {
                this$0 = RegisterActivity.this;
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

    public static void toRegisterActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/RegisterActivity));
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnActivation.setOnClickListener(new android.view.View.OnClickListener() {

            final RegisterActivity this$0;

            public void onClick(View view)
            {
                ActivationActivity.toActivationActivity(RegisterActivity.this);
            }

            
            {
                this$0 = RegisterActivity.this;
                super();
            }
        });
        btnRegister.setOnClickListener(new android.view.View.OnClickListener() {

            final RegisterActivity this$0;

            public void onClick(View view)
            {
                String s = edtName.getText().toString().trim();
                String s1 = edtPhone.getText().toString().trim();
                String s2 = edtEmail.getText().toString().trim();
                String s3 = edtUsername.getText().toString().trim();
                if (s.equals("") || s1.equals("") || s2.equals("") || s3.equals(""))
                {
                    Utils.showToast(RegisterActivity.this, "Semua field harus terisi");
                    return;
                } else
                {
                    requestRegister(s, s1, s2, s3);
                    return;
                }
            }

            
            {
                this$0 = RegisterActivity.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
    }

    public void initializeViews()
    {
        super.initializeViews();
        edtEmail = (EditText)findViewById(0x7f0a0060);
        edtName = (EditText)findViewById(0x7f0a005e);
        edtPhone = (EditText)findViewById(0x7f0a005f);
        edtUsername = (EditText)findViewById(0x7f0a0061);
        btnRegister = (Button)findViewById(0x7f0a0062);
        btnActivation = (Button)findViewById(0x7f0a0063);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030012);
        initializeViews();
        initializeLibs();
        initializeActions();
    }





}
