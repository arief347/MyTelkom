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
import com.neuron.mytelkom.utils.Data;

public class DashboardAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        ImageView imgIcon;
        TextView txtDesc;
        TextView txtName;

        ViewHolder()
        {
        }
    }


    Activity activity;
    LayoutInflater inflater;

    public DashboardAdapter(Activity activity1)
    {
        activity = activity1;
        inflater = (LayoutInflater)activity1.getSystemService("layout_inflater");
    }

    public int getCount()
    {
        return Data.dashboardIcon.length;
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
            view1 = inflater.inflate(0x7f030034, null);
            viewholder.txtDesc = (TextView)view1.findViewById(0x7f0a00da);
            viewholder.txtName = (TextView)view1.findViewById(0x7f0a00d9);
            viewholder.imgIcon = (ImageView)view1.findViewById(0x7f0a00d8);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.imgIcon.setImageResource(Data.dashboardIcon[i]);
        viewholder.txtName.setText(Data.dashboardMenu[i][0]);
        viewholder.txtDesc.setText(Data.dashboardMenu[i][1]);
        return view1;
    }
}
