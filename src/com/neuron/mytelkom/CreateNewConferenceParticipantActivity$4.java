// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import android.widget.Toast;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceParticipantActivity

class val.dialog extends AsyncHttpResponseHandler
{

    final CreateNewConferenceParticipantActivity this$0;
    private final ProgressDialog val$dialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$dialog.dismiss();
        Toast.makeText(CreateNewConferenceParticipantActivity.this, "Terjadi kesalahan silakan coba kembali", 1).show();
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        String s = new String(abyte0);
        Utils.printLog(s);
        fetchResponse(s);
    }

    ()
    {
        this$0 = final_createnewconferenceparticipantactivity;
        val$dialog = ProgressDialog.this;
        super();
    }
}
