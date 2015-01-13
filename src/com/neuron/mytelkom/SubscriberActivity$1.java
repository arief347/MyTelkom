// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom:
//            SubscriberActivity

class andler extends AsyncHttpResponseHandler
{

    final SubscriberActivity this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        SubscriberActivity.access$0(SubscriberActivity.this).setVisibility(8);
        SubscriberActivity.access$1(SubscriberActivity.this).setVisibility(8);
        SubscriberActivity.access$2(SubscriberActivity.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        SubscriberActivity.access$0(SubscriberActivity.this).setVisibility(8);
        SubscriberActivity.access$1(SubscriberActivity.this).setVisibility(0);
        SubscriberActivity.access$2(SubscriberActivity.this).setVisibility(8);
        String s = new String(abyte0);
        Utils.printLog(s);
        fetchResponse(s);
    }

    andler()
    {
        this$0 = SubscriberActivity.this;
        super();
    }
}
