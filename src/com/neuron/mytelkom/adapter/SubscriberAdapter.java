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
import com.neuron.mytelkom.model.Subscriber;
import java.util.ArrayList;

public class SubscriberAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        TextView txtName;
        TextView txtRole;
        TextView txtStatus;

        ViewHolder()
        {
        }
    }


    Activity activity;
    private ArrayList listUser;

    public SubscriberAdapter(Activity activity1, ArrayList arraylist)
    {
        activity = activity1;
        listUser = arraylist;
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
        String s;
        if (view1 == null)
        {
            viewholder = new ViewHolder();
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f03003c, null);
            viewholder.txtName = (TextView)view1.findViewById(0x7f0a00f3);
            viewholder.txtRole = (TextView)view1.findViewById(0x7f0a00f4);
            viewholder.txtStatus = (TextView)view1.findViewById(0x7f0a00f5);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtName.setText(((Subscriber)listUser.get(i)).getName());
        viewholder.txtRole.setText(((Subscriber)listUser.get(i)).getConferenceRole());
        if (((Subscriber)listUser.get(i)).getIsSpeaking().equals("true"))
        {
            s = "Speaking";
        } else
        if (((Subscriber)listUser.get(i)).getIsMute().equals("true"))
        {
            s = "Mute";
        } else
        {
            s = "-";
        }
        viewholder.txtStatus.setText(s);
        return view1;
    }
}
