// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.DatePickerDialog;
import android.view.View;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            TicketTypeFragment

class this._cls0
    implements android.view.tTypeFragment._cls5
{

    final TicketTypeFragment this$0;

    public void onClick(View view)
    {
        (new DatePickerDialog(getActivity(), TicketTypeFragment.access$11(TicketTypeFragment.this), TicketTypeFragment.access$8(TicketTypeFragment.this), TicketTypeFragment.access$9(TicketTypeFragment.this), TicketTypeFragment.access$10(TicketTypeFragment.this))).show();
    }

    ()
    {
        this$0 = TicketTypeFragment.this;
        super();
    }
}
