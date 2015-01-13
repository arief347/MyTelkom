// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            RegisterActivity, ForgotPasswordActivity, MainActivity

public class LoginActivity extends BaseActivity
{

    private Button btnLogin;
    private Button btnRegister;
    private EditText edtPassword;
    private EditText edtUsername;
    private TextView txtForgotPassword;

    public LoginActivity()
    {
    }

    public static void toLoginActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/LoginActivity));
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnLogin.setOnClickListener(new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                String s = edtUsername.getText().toString().trim();
                String s1 = edtPassword.getText().toString().trim();
                if (s.equals("") || s1.equals(""))
                {
                    Utils.showToast(LoginActivity.this, "Fields can not be blank");
                    return;
                } else
                {
                    requestLogin(s, s1);
                    return;
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        btnRegister.setOnClickListener(new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                RegisterActivity.toRegisterActivity(LoginActivity.this);
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        txtForgotPassword.setOnClickListener(new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                ForgotPasswordActivity.toForgotPasswordActivity(LoginActivity.this);
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
    }

    public void initializeViews()
    {
        super.initializeViews();
        btnLogin = (Button)findViewById(0x7f0a0045);
        btnRegister = (Button)findViewById(0x7f0a0047);
        txtForgotPassword = (TextView)findViewById(0x7f0a0046);
        edtPassword = (EditText)findViewById(0x7f0a0044);
        edtUsername = (EditText)findViewById(0x7f0a0043);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000b);
        initializeViews();
        initializeLibs();
        setToView();
        initializeActions();
    }

    public void requestLogin(final String username, String s)
    {
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setMessage("Please wait...");
        dialog.setCancelable(true);
        dialog.show();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("signinusername", Utils.encodedParam(username));
            jsonobject.put("signinpassword", Utils.encodedParam(s));
            jsonobject.put("ipaddress", Utils.encodedParam("10.1.2.1"));
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", jsonobject.toString());
            Utils.printLog(jsonobject.toString());
            asyncHttpClient.post("https://my.telkom.co.id/api/MTlogin.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final LoginActivity this$0;
                private final ProgressDialog val$dialog;
                private final String val$username;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Utils.showToast(LoginActivity.this, "Login error. Please try again. A");
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    String s1 = new String(abyte0);
                    Utils.printLog(s1);
                    if ((new JSONObject(s1)).getString("rescode").equals("00"))
                    {
                        preference.setUsername(username);
                        preference.setIsLogin(true);
                        MainActivity.toMainActivity(LoginActivity.this);
                        finish();
                        return;
                    }
                    try
                    {
                        Utils.showToast(LoginActivity.this, "Login error. Please try again");
                        return;
                    }
                    catch (JSONException jsonexception)
                    {
                        jsonexception.printStackTrace();
                    }
                    return;
                }

            
            {
                this$0 = LoginActivity.this;
                dialog = progressdialog;
                username = s;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void setToView()
    {
        super.setToView();
        txtForgotPassword.setText(Html.fromHtml("<u>Forgot your password?</u>"));
    }


}
