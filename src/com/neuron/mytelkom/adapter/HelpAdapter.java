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
import com.neuron.mytelkom.model.HelpItem;
import java.util.ArrayList;

public class HelpAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtTitle;

        ViewHolder()
        {
        }
    }


    Activity activity;
    ArrayList listHelp;

    public HelpAdapter(Activity activity1, ArrayList arraylist)
    {
        activity = activity1;
        listHelp = arraylist;
    }

    public int getCount()
    {
        return listHelp.size();
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
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030037, null);
            viewholder.txtTitle = (TextView)view1.findViewById(0x7f0a00e2);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtTitle.setText(((HelpItem)listHelp.get(i)).getTitle());
        return view1;
    }
}
