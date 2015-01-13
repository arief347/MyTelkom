// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.adapter;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.neuron.mytelkom.model.Ticket;
import java.util.LinkedList;

public class MyTicketAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtDate;
        TextView txtNo;
        TextView txtProductNo;
        TextView txtStatus;

        ViewHolder()
        {
        }
    }


    Activity activity;
    LinkedList listItem;

    public MyTicketAdapter(Activity activity1, LinkedList linkedlist)
    {
        activity = activity1;
        listItem = linkedlist;
    }

    public int getCount()
    {
        return listItem.size();
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        ViewHolder viewholder;
        if (view1 == null)
        {
            viewholder = new ViewHolder();
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f03003a, null);
            viewholder.txtNo = (TextView)view1.findViewById(0x7f0a00eb);
            viewholder.txtDate = (TextView)view1.findViewById(0x7f0a00ed);
            viewholder.txtStatus = (TextView)view1.findViewById(0x7f0a00ee);
            viewholder.txtProductNo = (TextView)view1.findViewById(0x7f0a00ec);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtNo.setText((new StringBuilder("Ticket No : ")).append(((Ticket)listItem.get(i)).getTicketNo()).toString());
        viewholder.txtDate.setText(((Ticket)listItem.get(i)).getComplaintDatetime());
        viewholder.txtProductNo.setText((new StringBuilder("Product No :")).append(((Ticket)listItem.get(i)).getProductNo()).toString());
        viewholder.txtStatus.setText((new StringBuilder("Status :")).append(((Ticket)listItem.get(i)).getCompaintStatus()).toString());
        return view1;
    }
}
