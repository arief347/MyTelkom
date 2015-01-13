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
import java.util.ArrayList;

public class TicketTrackingAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtDateTime;
        TextView txtStatus;

        ViewHolder()
        {
        }
    }


    Activity activity;
    ArrayList listItem;

    public TicketTrackingAdapter(Activity activity1, ArrayList arraylist)
    {
        activity = activity1;
        listItem = arraylist;
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
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f03003e, null);
            viewholder.txtDateTime = (TextView)view1.findViewById(0x7f0a00f8);
            viewholder.txtStatus = (TextView)view1.findViewById(0x7f0a00f9);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtDateTime.setText(((Ticket)listItem.get(i)).getComplaintDatetime());
        viewholder.txtStatus.setText(((Ticket)listItem.get(i)).getCompaintStatus());
        return view1;
    }
}
