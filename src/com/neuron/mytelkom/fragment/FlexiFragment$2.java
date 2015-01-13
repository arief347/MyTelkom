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
//            FlexiFragment

class er extends AsyncHttpResponseHandler
{

    final FlexiFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        FlexiFragment.access$0(FlexiFragment.this).setVisibility(8);
        FlexiFragment.access$1(FlexiFragment.this).setVisibility(8);
        FlexiFragment.access$2(FlexiFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        FlexiFragment.access$0(FlexiFragment.this).setVisibility(0);
        FlexiFragment.access$1(FlexiFragment.this).setVisibility(8);
        FlexiFragment.access$2(FlexiFragment.this).setVisibility(8);
        new String(abyte0);
        FlexiFragment.access$3(FlexiFragment.this, Product.getListProduct(new String(abyte0), "FLEXI"));
        if (FlexiFragment.access$4(FlexiFragment.this) != null)
        {
            setToView();
            return;
        } else
        {
            FlexiFragment.access$0(FlexiFragment.this).setVisibility(0);
            FlexiFragment.access$1(FlexiFragment.this).setVisibility(8);
            FlexiFragment.access$2(FlexiFragment.this).setVisibility(0);
            return;
        }
    }

    er()
    {
        this$0 = FlexiFragment.this;
        super();
    }
}
