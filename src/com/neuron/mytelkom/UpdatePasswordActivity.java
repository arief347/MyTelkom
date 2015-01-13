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
import android.widget.Button;
import android.widget.EditText;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

public class UpdatePasswordActivity extends BaseActivity
{

    private Button btnSubmit;
    private EditText edtConfirm;
    private EditText edtNewPassword;
    private EditText edtOldPassword;

    public UpdatePasswordActivity()
    {
    }

    public static void toUpdatePasswordActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/UpdatePasswordActivity));
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (jsonobject.getString("rescode").equals("00"))
        {
            Utils.showToast(this, (new StringBuilder("Update Password Berhasil.")).append(jsonobject.getString("resmsg")).toString());
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
        btnSubmit.setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePasswordActivity this$0;

            public void onClick(View view)
            {
                submitNewPassword();
            }

            
            {
                this$0 = UpdatePasswordActivity.this;
                super();
            }
        });
    }

    public void initializeViews()
    {
        super.initializeViews();
        edtConfirm = (EditText)findViewById(0x7f0a0068);
        edtNewPassword = (EditText)findViewById(0x7f0a0067);
        edtOldPassword = (EditText)findViewById(0x7f0a0069);
        btnSubmit = (Button)findViewById(0x7f0a006a);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030016);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeViews();
        initializeActions();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    protected void submitNewPassword()
    {
        String s = edtOldPassword.getText().toString().trim();
        String s1 = edtNewPassword.getText().toString().trim();
        String s2 = edtConfirm.getText().toString().trim();
        if (s.equals("") || s1.equals("") || s2.equals(""))
        {
            Utils.showToast(this, "Field tidak boleh kosong");
            return;
        }
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomid", preference.getUsername());
            jsonobject.put("passwordnew", s1);
            jsonobject.put("passwordconfirm", s2);
            jsonobject.put("passwordold", s);
            String s3 = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s3);
            Utils.printLog(s3);
            final ProgressDialog dialog = new ProgressDialog(this);
            dialog.setTitle("Update Password");
            dialog.setMessage("Harap Tunggu...");
            dialog.setCancelable(true);
            dialog.show();
            asyncHttpClient.post("https://my.telkom.co.id/api/MTchangePassword.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final UpdatePasswordActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    Utils.printLog(new String(abyte0));
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = UpdatePasswordActivity.this;
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
}
