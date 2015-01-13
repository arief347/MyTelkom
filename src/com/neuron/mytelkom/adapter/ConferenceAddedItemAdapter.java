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
import com.neuron.mytelkom.model.ConferenceAttendees;
import java.util.ArrayList;

public class ConferenceAddedItemAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtEmail;
        TextView txtName;
        TextView txtNoHP;

        ViewHolder()
        {
        }
    }


    Activity activity;
    LayoutInflater inflater;
    private ArrayList listUser;

    public ConferenceAddedItemAdapter(Activity activity1, ArrayList arraylist)
    {
        activity = activity1;
        listUser = arraylist;
        inflater = (LayoutInflater)activity1.getSystemService("layout_inflater");
    }

    public int getCount()
    {
        return listUser.size();
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
            view1 = inflater.inflate(0x7f030032, null);
            viewholder.txtName = (TextView)view1.findViewById(0x7f0a00d2);
            viewholder.txtEmail = (TextView)view1.findViewById(0x7f0a00d3);
            viewholder.txtNoHP = (TextView)view1.findViewById(0x7f0a00d4);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtName.setText(((ConferenceAttendees)listUser.get(i)).getName());
        viewholder.txtEmail.setText(((ConferenceAttendees)listUser.get(i)).getEmail());
        viewholder.txtNoHP.setText(((ConferenceAttendees)listUser.get(i)).getPhone());
        return view1;
    }
}
