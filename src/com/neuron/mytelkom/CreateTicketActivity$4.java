// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom:
//            CreateTicketActivity

class dler extends AsyncHttpResponseHandler
{

    final CreateTicketActivity this$0;
    private final ProgressDialog val$progressDialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$progressDialog.dismiss();
        Utils.showToast(CreateTicketActivity.this, "Error dalam mendapatkan complaint list");
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$progressDialog.dismiss();
        String s = new String(abyte0);
        Utils.printLog(s);
        fetchComplaintListLevel2(s);
    }

    dler()
    {
        this$0 = final_createticketactivity;
        val$progressDialog = ProgressDialog.this;
        super();
    }
}
