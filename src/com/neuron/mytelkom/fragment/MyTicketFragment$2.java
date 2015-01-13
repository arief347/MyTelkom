// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.adapter.MyTicketAdapter;
import com.neuron.mytelkom.model.Ticket;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            MyTicketFragment

class <init> extends AsyncHttpResponseHandler
{

    final MyTicketFragment this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        MyTicketFragment.access$0(MyTicketFragment.this).setVisibility(8);
        MyTicketFragment.access$1(MyTicketFragment.this).setVisibility(8);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        MyTicketFragment.access$0(MyTicketFragment.this).setVisibility(0);
        MyTicketFragment.access$1(MyTicketFragment.this).setVisibility(8);
        Utils.printLog(new String(abyte0));
        MyTicketFragment.access$2(MyTicketFragment.this, Ticket.getListTicket(new String(abyte0)));
        if (MyTicketFragment.access$3(MyTicketFragment.this) != null)
        {
            MyTicketAdapter myticketadapter = new MyTicketAdapter(getActivity(), MyTicketFragment.access$3(MyTicketFragment.this));
            MyTicketFragment.access$0(MyTicketFragment.this).setAdapter(myticketadapter);
            return;
        } else
        {
            MyTicketFragment.access$4(MyTicketFragment.this).setText("No data available");
            return;
        }
    }

    ()
    {
        this$0 = MyTicketFragment.this;
        super();
    }
}
