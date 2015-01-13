// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.text.Editable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import com.neuron.mytelkom.utils.Utils;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            TicketTypeFragment

class this._cls0
    implements android.widget.ckListener
{

    final TicketTypeFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        String s = TicketTypeFragment.access$5(TicketTypeFragment.this).getText().toString().trim();
        if (!TicketTypeFragment.access$6(TicketTypeFragment.this).getText().toString().trim().equals("") || !s.equals(""))
        {
            toMyTicket(i);
            return;
        } else
        {
            Utils.showToast(getActivity(), "Harap pilih tanggal mulai dan akhir untuk pencarian tiket");
            return;
        }
    }

    ()
    {
        this$0 = TicketTypeFragment.this;
        super();
    }
}
