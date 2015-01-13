// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            LoginActivity, MainActivity

class onseHandler extends AsyncHttpResponseHandler
{

    final LoginActivity this$0;
    private final ProgressDialog val$dialog;
    private final String val$username;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$dialog.dismiss();
        Utils.showToast(LoginActivity.this, "Login error. Please try again. A");
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        String s = new String(abyte0);
        Utils.printLog(s);
        if ((new JSONObject(s)).getString("rescode").equals("00"))
        {
            preference.setUsername(val$username);
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

    ()
    {
        this$0 = final_loginactivity;
        val$dialog = progressdialog;
        val$username = String.this;
        super();
    }
}
