// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            MyTicketFragment

class this._cls0
    implements android.widget.lickListener
{

    final MyTicketFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        toDetilTicket(i);
    }

    ()
    {
        this$0 = MyTicketFragment.this;
        super();
    }
}
