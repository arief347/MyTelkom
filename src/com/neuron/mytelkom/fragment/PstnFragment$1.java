// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            PstnFragment

class this._cls0
    implements android.widget.temClickListener
{

    final PstnFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        toDetilBillingFragment(i);
    }

    er()
    {
        this$0 = PstnFragment.this;
        super();
    }
}
