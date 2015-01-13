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
import com.neuron.mytelkom.model.ConferenceItem;
import java.util.ArrayList;

public class ConferenceAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtItemDate;
        TextView txtItemName;

        ViewHolder()
        {
        }
    }


    Activity activity;
    ArrayList listItem;

    public ConferenceAdapter(Activity activity1, ArrayList arraylist)
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
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030031, null);
            viewholder.txtItemDate = (TextView)view1.findViewById(0x7f0a00d1);
            viewholder.txtItemName = (TextView)view1.findViewById(0x7f0a00d0);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtItemName.setText(((ConferenceItem)listItem.get(i)).getSubject());
        viewholder.txtItemDate.setText(Html.fromHtml((new StringBuilder(String.valueOf(((ConferenceItem)listItem.get(i)).getStartTime()))).append(" - ").append("<form color=red>").append(((ConferenceItem)listItem.get(i)).getConferenceState()).append("</font>").toString()));
        return view1;
    }
}
