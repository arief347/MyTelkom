// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import com.neuron.mytelkom.model.Product;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilPtsnFragment

class this._cls0
    implements android.view.
{

    final DetilPtsnFragment this$0;

    public void onClick(View view)
    {
        showDeleteDialog((new StringBuilder("Telepon Rumah ")).append(getProduct().getProductNo()).toString(), getProduct().getProductNo());
    }

    ()
    {
        this$0 = DetilPtsnFragment.this;
        super();
    }
}
