// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilFlexiFragment

class this._cls0
    implements android.view.FlexiFragment._cls1
{

    final DetilFlexiFragment this$0;

    public void onClick(View view)
    {
        if (DetilFlexiFragment.access$0(DetilFlexiFragment.this).getVisibility() == 0)
        {
            DetilFlexiFragment.access$0(DetilFlexiFragment.this).setVisibility(8);
            return;
        } else
        {
            DetilFlexiFragment.access$0(DetilFlexiFragment.this).setVisibility(0);
            return;
        }
    }

    ()
    {
        this$0 = DetilFlexiFragment.this;
        super();
    }
}
