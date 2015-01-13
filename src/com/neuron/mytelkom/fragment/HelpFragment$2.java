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
//            HelpFragment

class ler extends AsyncHttpResponseHandler
{

    final HelpFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        HelpFragment.access$1(HelpFragment.this).setVisibility(8);
        HelpFragment.access$2(HelpFragment.this).setVisibility(8);
        HelpFragment.access$3(HelpFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        HelpFragment.access$1(HelpFragment.this).setVisibility(8);
        HelpFragment.access$2(HelpFragment.this).setVisibility(0);
        HelpFragment.access$3(HelpFragment.this).setVisibility(8);
        String s = new String(abyte0);
        fetchResponse(s);
    }

    ler()
    {
        this$0 = HelpFragment.this;
        super();
    }
}
