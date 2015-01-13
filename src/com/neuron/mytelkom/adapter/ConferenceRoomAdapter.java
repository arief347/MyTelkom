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

public class ConferenceRoomAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtItemPhoneEmail;
        TextView txtItemPhoneName;
        TextView txtItemPhoneNo;

        ViewHolder()
        {
        }
    }


    Activity activity;
    LayoutInflater inflater;
    ArrayList listAttendee;

    public ConferenceRoomAdapter(Activity activity1, ArrayList arraylist)
    {
        activity = activity1;
        inflater = (LayoutInflater)activity1.getSystemService("layout_inflater");
        listAttendee = arraylist;
    }

    public int getCount()
    {
        return listAttendee.size();
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
            view1 = inflater.inflate(0x7f030033, null);
            viewholder.txtItemPhoneNo = (TextView)view1.findViewById(0x7f0a00d6);
            viewholder.txtItemPhoneName = (TextView)view1.findViewById(0x7f0a00d0);
            viewholder.txtItemPhoneEmail = (TextView)view1.findViewById(0x7f0a00d7);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtItemPhoneNo.setText(((ConferenceAttendees)listAttendee.get(i)).getPhone());
        viewholder.txtItemPhoneName.setText(((ConferenceAttendees)listAttendee.get(i)).getName());
        viewholder.txtItemPhoneEmail.setText(((ConferenceAttendees)listAttendee.get(i)).getEmail());
        return view1;
    }
}
