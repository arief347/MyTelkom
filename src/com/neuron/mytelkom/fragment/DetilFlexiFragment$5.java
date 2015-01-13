// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.widget.ProgressBar;
import android.widget.ScrollView;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilFlexiFragment

class nit> extends AsyncHttpResponseHandler
{

    final DetilFlexiFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        DetilFlexiFragment.access$2(DetilFlexiFragment.this).setVisibility(8);
        DetilFlexiFragment.access$3(DetilFlexiFragment.this).setVisibility(8);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        String s = new String(abyte0);
        Utils.printLog(s);
        fetchResponse(s);
    }

    ()
    {
        this$0 = DetilFlexiFragment.this;
        super();
    }
}
