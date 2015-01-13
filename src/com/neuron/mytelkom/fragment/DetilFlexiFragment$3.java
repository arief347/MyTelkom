// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import com.neuron.mytelkom.CreateTicketActivity;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilFlexiFragment

class this._cls0
    implements android.view.FlexiFragment._cls3
{

    final DetilFlexiFragment this$0;

    public void onClick(View view)
    {
        CreateTicketActivity.toCreateTicketActivity(getActivity(), products, com.neuron.mytelkom..ProductType.FLEXI);
    }

    ype()
    {
        this$0 = DetilFlexiFragment.this;
        super();
    }
}
