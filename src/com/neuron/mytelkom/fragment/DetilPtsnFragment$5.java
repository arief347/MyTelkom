// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilPtsnFragment

class init> extends AsyncHttpResponseHandler
{

    final DetilPtsnFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        DetilPtsnFragment.access$2(DetilPtsnFragment.this).setVisibility(8);
        DetilPtsnFragment.access$3(DetilPtsnFragment.this).setVisibility(8);
        DetilPtsnFragment.access$4(DetilPtsnFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        Utils.printLog(new String(abyte0));
        fetchResponse(new String(abyte0));
    }

    ()
    {
        this$0 = DetilPtsnFragment.this;
        super();
    }
}
