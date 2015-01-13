// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import com.neuron.mytelkom.model.ImeiItem;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilImeFragment

class this._cls0
    implements android.view.r
{

    final DetilImeFragment this$0;

    public void onClick(View view)
    {
        showDeleteDialog(getImeiItem().getProductType(), getImeiItem().getProductNo());
    }

    ()
    {
        this$0 = DetilImeFragment.this;
        super();
    }
}
