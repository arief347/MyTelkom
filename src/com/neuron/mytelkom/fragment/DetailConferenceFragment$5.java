// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetailConferenceFragment

class this._cls0 extends AsyncHttpResponseHandler
{

    final DetailConferenceFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        DetailConferenceFragment.access$1(DetailConferenceFragment.this).setVisibility(8);
        DetailConferenceFragment.access$2(DetailConferenceFragment.this).setVisibility(8);
        DetailConferenceFragment.access$3(DetailConferenceFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        Utils.printLog(new String(abyte0));
        fetchResponse(new String(abyte0));
    }

    ()
    {
        this$0 = DetailConferenceFragment.this;
        super();
    }
}
