// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceFragment

class nit> extends AsyncHttpResponseHandler
{

    final ConferenceFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        ConferenceFragment.access$0(ConferenceFragment.this).setVisibility(8);
        ConferenceFragment.access$1(ConferenceFragment.this).setVisibility(8);
        ConferenceFragment.access$2(ConferenceFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        String s = new String(abyte0);
        fetchResponse(s);
    }

    ()
    {
        this$0 = ConferenceFragment.this;
        super();
    }
}
