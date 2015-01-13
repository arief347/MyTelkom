// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.adapter;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.neuron.mytelkom.model.NavDrawerItem;
import java.util.ArrayList;

public class NavDrawerListAdapter extends BaseAdapter
{

    private Context context;
    private ArrayList navDrawerItems;

    public NavDrawerListAdapter(Context context1, ArrayList arraylist)
    {
        context = context1;
        navDrawerItems = arraylist;
    }

    public int getCount()
    {
        return navDrawerItems.size();
    }

    public Object getItem(int i)
    {
        return navDrawerItems.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030018, null);
        }
        ImageView imageview = (ImageView)view.findViewById(0x7f0a0072);
        TextView textview = (TextView)view.findViewById(0x7f0a0073);
        imageview.setImageResource(((NavDrawerItem)navDrawerItems.get(i)).getIcon());
        textview.setText(((NavDrawerItem)navDrawerItems.get(i)).getTitle());
        textview.setTypeface(Typeface.createFromAsset(context.getAssets(), "fonts/MyriadPro-Regular.otf"));
        return view;
    }
}
