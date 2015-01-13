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
//            RegisterActivity, ActivationActivity

class eHandler extends AsyncHttpResponseHandler
{

    final RegisterActivity this$0;
    private final ProgressDialog val$dialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        val$dialog.dismiss();
        super.onFailure(i, aheader, abyte0, throwable);
        Utils.printLog("Error");
        Utils.showToast(RegisterActivity.this, "Can not register at this time. Please try again");
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        JSONObject jsonobject;
        jsonobject = new JSONObject(new String(abyte0));
        Utils.printLog(jsonobject.toString());
        if (jsonobject.getString("rescode").equals("00"))
        {
            ActivationActivity.toActivationActivity(RegisterActivity.this);
            return;
        }
        try
        {
            Utils.showToast(RegisterActivity.this, jsonobject.getString("resmsg"));
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        return;
    }

    eHandler()
    {
        this$0 = final_registeractivity;
        val$dialog = ProgressDialog.this;
        super();
    }
}
