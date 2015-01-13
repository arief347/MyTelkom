// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.model.ImeiItem;
import java.util.ArrayList;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ImeFragment

class dler extends AsyncHttpResponseHandler
{

    final ImeFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        ImeFragment.access$0(ImeFragment.this).setVisibility(8);
        ImeFragment.access$2(ImeFragment.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        ImeFragment.access$0(ImeFragment.this).setVisibility(8);
        ImeFragment.access$1(ImeFragment.this).setVisibility(0);
        ImeFragment.access$2(ImeFragment.this).setVisibility(8);
        ImeFragment.access$3(ImeFragment.this, ImeiItem.getListImeItem(new String(abyte0)));
        if (ImeFragment.access$4(ImeFragment.this) != null && ImeFragment.access$4(ImeFragment.this).size() > 0)
        {
            setToView();
            return;
        } else
        {
            ImeFragment.access$0(ImeFragment.this).setVisibility(8);
            ImeFragment.access$1(ImeFragment.this).setVisibility(8);
            ImeFragment.access$2(ImeFragment.this).setVisibility(0);
            return;
        }
    }

    dler()
    {
        this$0 = ImeFragment.this;
        super();
    }
}
