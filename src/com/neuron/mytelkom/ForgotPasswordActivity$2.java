// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            ForgotPasswordActivity

class er extends AsyncHttpResponseHandler
{

    final ForgotPasswordActivity this$0;
    private final ProgressDialog val$dialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$dialog.dismiss();
        Utils.showToast(ForgotPasswordActivity.this, (new StringBuilder(String.valueOf(throwable.getMessage()))).toString());
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        JSONObject jsonobject = new JSONObject(new String(abyte0));
        if (jsonobject.getString("rescode").equals("00"))
        {
            Utils.showToast(ForgotPasswordActivity.this, jsonobject.getString("resmsg"));
            finish();
            return;
        }
        try
        {
            Utils.showToast(ForgotPasswordActivity.this, "Can not send your request. Please try again");
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        return;
    }

    er()
    {
        this$0 = final_forgotpasswordactivity;
        val$dialog = ProgressDialog.this;
        super();
    }
}
