// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.adapter;

import android.app.Activity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.neuron.mytelkom.model.Product;
import java.util.LinkedList;

public class PtsnAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtNo;
        TextView txtPeriod;
        TextView txtStatus;

        ViewHolder()
        {
        }
    }


    Activity activity;
    LinkedList listItem;

    public PtsnAdapter(Activity activity1, LinkedList linkedlist)
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
        String s;
        if (view1 == null)
        {
            viewholder = new ViewHolder();
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f03003b, null);
            viewholder.txtNo = (TextView)view1.findViewById(0x7f0a00f0);
            viewholder.txtPeriod = (TextView)view1.findViewById(0x7f0a00f1);
            viewholder.txtStatus = (TextView)view1.findViewById(0x7f0a00f2);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtNo.setText(((Product)listItem.get(i)).getProductNo());
        viewholder.txtPeriod.setText(((Product)listItem.get(i)).getRegDate());
        if (((Product)listItem.get(i)).getStatus().equals("1"))
        {
            s = "<font color=red>UNPAID</font>";
        } else
        {
            s = "<font color=green>PAID</font>";
        }
        viewholder.txtStatus.setText(Html.fromHtml(s));
        return view1;
    }
}
