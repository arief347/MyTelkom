// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.adapter;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class TicketTypeAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        ImageView imgIcon;
        TextView txtItem;

        ViewHolder()
        {
        }
    }


    public static String productName[] = {
        "Speedy", "PSTN", "Flexi"
    };
    Activity activity;
    int productIcon[] = {
        0x7f020032, 0x7f020030, 0x7f020028
    };

    public TicketTypeAdapter(Activity activity1)
    {
        activity = activity1;
    }

    public int getCount()
    {
        return productIcon.length;
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
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f03003d, null);
            viewholder.txtItem = (TextView)view1.findViewById(0x7f0a00f7);
            viewholder.imgIcon = (ImageView)view1.findViewById(0x7f0a00f6);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtItem.setText(productName[i]);
        viewholder.imgIcon.setImageResource(productIcon[i]);
        return view1;
    }

}
