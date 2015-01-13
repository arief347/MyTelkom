// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilPtsnFragment

class this._cls0
    implements android.view.
{

    final DetilPtsnFragment this$0;

    public void onClick(View view)
    {
        if (DetilPtsnFragment.access$1(DetilPtsnFragment.this).getVisibility() == 0)
        {
            DetilPtsnFragment.access$1(DetilPtsnFragment.this).setVisibility(8);
            return;
        } else
        {
            DetilPtsnFragment.access$1(DetilPtsnFragment.this).setVisibility(0);
            return;
        }
    }

    ()
    {
        this$0 = DetilPtsnFragment.this;
        super();
    }
}
