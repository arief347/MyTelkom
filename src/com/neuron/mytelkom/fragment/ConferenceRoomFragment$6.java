// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.ProgressDialog;
import com.loopj.android.http.AsyncHttpResponseHandler;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceRoomFragment

class  extends AsyncHttpResponseHandler
{

    final ConferenceRoomFragment this$0;
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
        fetchResponse(new String(abyte0));
    }

    ()
    {
        this$0 = final_conferenceroomfragment;
        val$dialog = ProgressDialog.this;
        super();
    }
}
