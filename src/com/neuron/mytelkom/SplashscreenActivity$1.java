// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            SplashscreenActivity

class dler extends AsyncHttpResponseHandler
{

    final SplashscreenActivity this$0;
    private final ProgressDialog val$dialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$dialog.dismiss();
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        try
        {
            JSONObject jsonobject = new JSONObject(new String(abyte0));
            if (jsonobject.getString("code").equals("00"))
            {
                String s = jsonobject.getString("result");
                preference.setCity(s);
                route();
            }
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
    }

    dler()
    {
        this$0 = final_splashscreenactivity;
        val$dialog = ProgressDialog.this;
        super();
    }
}
