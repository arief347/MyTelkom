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

public class ForgotPasswordActivity extends BaseActivity
{

    private Button btnSubmit;
    private EditText edtEmail;

    public ForgotPasswordActivity()
    {
    }

    private void requestForgotPassword(String s)
    {
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setMessage("Please wait...");
        dialog.setCancelable(true);
        dialog.show();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("email", s);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", jsonobject);
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileForgetPassword1.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final ForgotPasswordActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Utils.showToast(ForgotPasswordActivity.this, (new StringBuilder(String.valueOf(throwable.getMessage()))).toString());
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    JSONObject jsonobject1 = new JSONObject(new String(abyte0));
                    if (jsonobject1.getString("rescode").equals("00"))
                    {
                        Utils.showToast(ForgotPasswordActivity.this, jsonobject1.getString("resmsg"));
                        finish();
                        return;
                    }
                    try
                    {
                        Utils.showToast(ForgotPasswordActivity.this, "Can not send your request. Please try again");
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Utils.printLog(exception1.getMessage());
                    }
                    return;
                }

            
            {
                this$0 = ForgotPasswordActivity.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Utils.showToast(this, exception.getMessage());
        }
    }

    public static void toForgotPasswordActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/ForgotPasswordActivity));
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnSubmit.setOnClickListener(new android.view.View.OnClickListener() {

            final ForgotPasswordActivity this$0;

            public void onClick(View view)
            {
                String s = edtEmail.getText().toString().trim();
                if (s.equals(""))
                {
                    Utils.showToast(ForgotPasswordActivity.this, "Field can not be blank");
                    return;
                } else
                {
                    requestForgotPassword(s);
                    return;
                }
            }

            
            {
                this$0 = ForgotPasswordActivity.this;
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
        edtEmail = (EditText)findViewById(0x7f0a0040);
        btnSubmit = (Button)findViewById(0x7f0a0041);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030009);
        initializeViews();
        initializeLibs();
        initializeActions();
    }


}
