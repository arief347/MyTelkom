// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom:
//            ActivationActivity

class andler extends AsyncHttpResponseHandler
{

    final ActivationActivity this$0;
    private final ProgressDialog val$dialog;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        val$dialog.dismiss();
        Utils.showToast(ActivationActivity.this, "Gagal melakukan aktivasi. Silakan coba lagi");
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        val$dialog.dismiss();
        String s = new String(abyte0);
        fetchResponse(s);
    }

    andler()
    {
        this$0 = final_activationactivity;
        val$dialog = ProgressDialog.this;
        super();
    }
}
