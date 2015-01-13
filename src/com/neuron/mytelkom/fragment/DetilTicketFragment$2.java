// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.ScrollView;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilTicketFragment

class this._cls0
    implements android.view.icketFragment._cls2
{

    final DetilTicketFragment this$0;

    public void onClick(View view)
    {
        if (DetilTicketFragment.access$2(DetilTicketFragment.this).getVisibility() == 0)
        {
            DetilTicketFragment.access$2(DetilTicketFragment.this).setVisibility(8);
            return;
        } else
        {
            DetilTicketFragment.access$2(DetilTicketFragment.this).setVisibility(0);
            return;
        }
    }

    ()
    {
        this$0 = DetilTicketFragment.this;
        super();
    }
}
