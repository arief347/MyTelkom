// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.base;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Constant;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.base:
//            BaseFragment

class Handler extends AsyncHttpResponseHandler
{

    final BaseFragment this$0;
    private final ProgressDialog val$dialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$dialog.dismiss();
        Log.d(Constant.APP_TAG, "Error Delete Product");
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        String s;
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        s = new String(abyte0);
        Utils.printLog(s);
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_143;
        }
        JSONObject jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (jsonobject1.getString("rescode").equals("00"))
        {
            Utils.showToast(getActivity(), jsonobject1.getString("resmsg"));
            getActivity().finish();
            return;
        }
        try
        {
            Utils.showToast(getActivity(), jsonobject.getString("resmsg"));
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        return;
        Utils.showToast(getActivity(), jsonobject.getString("resmsg"));
        return;
    }

    Handler()
    {
        this$0 = final_basefragment;
        val$dialog = ProgressDialog.this;
        super();
    }
}
