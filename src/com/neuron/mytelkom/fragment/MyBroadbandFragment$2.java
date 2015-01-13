// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.model.Product;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            MyBroadbandFragment

class it> extends AsyncHttpResponseHandler
{

    final MyBroadbandFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        MyBroadbandFragment.access$0(MyBroadbandFragment.this).setVisibility(8);
        MyBroadbandFragment.access$1(MyBroadbandFragment.this).setVisibility(8);
        MyBroadbandFragment.access$2(MyBroadbandFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        MyBroadbandFragment.access$0(MyBroadbandFragment.this).setVisibility(0);
        MyBroadbandFragment.access$1(MyBroadbandFragment.this).setVisibility(8);
        MyBroadbandFragment.access$2(MyBroadbandFragment.this).setVisibility(8);
        new String(abyte0);
        MyBroadbandFragment.access$3(MyBroadbandFragment.this, Product.getListProduct(new String(abyte0), "SPEEDY"));
        if (MyBroadbandFragment.access$4(MyBroadbandFragment.this) != null)
        {
            setToView();
            return;
        } else
        {
            MyBroadbandFragment.access$0(MyBroadbandFragment.this).setVisibility(8);
            MyBroadbandFragment.access$1(MyBroadbandFragment.this).setVisibility(8);
            MyBroadbandFragment.access$2(MyBroadbandFragment.this).setVisibility(0);
            return;
        }
    }

    ()
    {
        this$0 = MyBroadbandFragment.this;
        super();
    }
}
