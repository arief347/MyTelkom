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
import android.widget.ImageView;
import android.widget.TextView;
import com.neuron.mytelkom.model.Product;
import java.util.LinkedList;

public class FlexiAdapter extends BaseAdapter
{
    static class ViewHolder
    {

        ImageView imgArrow;
        TextView txtDesc;
        TextView txtNo;
        TextView txtStatus;

        ViewHolder()
        {
        }
    }


    Activity activity;
    LinkedList listItem;

    public FlexiAdapter(Activity activity1, LinkedList linkedlist)
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
        if (view1 == null)
        {
            viewholder = new ViewHolder();
            view1 = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030036, null);
            viewholder.txtNo = (TextView)view1.findViewById(0x7f0a00de);
            viewholder.txtDesc = (TextView)view1.findViewById(0x7f0a00df);
            viewholder.txtStatus = (TextView)view1.findViewById(0x7f0a00e0);
            viewholder.imgArrow = (ImageView)view1.findViewById(0x7f0a00e1);
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view1.getTag();
        }
        viewholder.txtNo.setText(((Product)listItem.get(i)).getProductNo());
        viewholder.imgArrow.setVisibility(0);
        if (((Product)listItem.get(i)).getProductDesc().equals("FLEXI PRABAYAR"))
        {
            viewholder.imgArrow.setVisibility(8);
            viewholder.txtDesc.setText(((Product)listItem.get(i)).getProductDesc());
            return view1;
        }
        viewholder.imgArrow.setVisibility(0);
        viewholder.txtDesc.setText(((Product)listItem.get(i)).getProductDesc());
        String s;
        if (((Product)listItem.get(i)).getStatus().equals("0"))
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
