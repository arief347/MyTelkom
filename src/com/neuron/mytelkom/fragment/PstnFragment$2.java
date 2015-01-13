// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.model.Product;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            PstnFragment

class ler extends AsyncHttpResponseHandler
{

    final PstnFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        PstnFragment.access$0(PstnFragment.this).setVisibility(8);
        PstnFragment.access$1(PstnFragment.this).setVisibility(8);
        PstnFragment.access$2(PstnFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        PstnFragment.access$0(PstnFragment.this).setVisibility(0);
        PstnFragment.access$1(PstnFragment.this).setVisibility(8);
        PstnFragment.access$2(PstnFragment.this).setVisibility(8);
        Utils.printLog(new String(abyte0));
        PstnFragment.access$3(PstnFragment.this, Product.getListProduct(new String(abyte0), "PSTN"));
        if (PstnFragment.access$4(PstnFragment.this) != null)
        {
            setToView();
            return;
        } else
        {
            PstnFragment.access$0(PstnFragment.this).setVisibility(8);
            PstnFragment.access$1(PstnFragment.this).setVisibility(8);
            PstnFragment.access$2(PstnFragment.this).setVisibility(0);
            return;
        }
    }

    ler()
    {
        this$0 = PstnFragment.this;
        super();
    }
}
