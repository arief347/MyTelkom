// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.fragment.MyTicketFragment;

public class MyTicketActivity extends BaseActivity
{

    public static String KEY_PRODUCT_NAME = "productName";
    public static String KEY_TGL_AKHIR = "tglAkhir";
    public static String KEY_TGL_AWAL = "tglAwal";
    String productName;
    String tglAkhir;
    String tglAwal;

    public MyTicketActivity()
    {
    }

    public static void toMyTicketFragmentActivity(Activity activity, String s, String s1, String s2)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/MyTicketActivity);
        intent.putExtra(KEY_PRODUCT_NAME, s);
        intent.putExtra(KEY_TGL_AKHIR, s2);
        intent.putExtra(KEY_TGL_AWAL, s1);
        activity.startActivityForResult(intent, 0);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000e);
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        productName = getIntent().getStringExtra(KEY_PRODUCT_NAME);
        tglAkhir = getIntent().getStringExtra(KEY_TGL_AKHIR);
        tglAwal = getIntent().getStringExtra(KEY_TGL_AWAL);
        if (bundle == null)
        {
            MyTicketFragment myticketfragment = new MyTicketFragment();
            myticketfragment.setProductName(productName);
            myticketfragment.setTglDari(tglAwal);
            myticketfragment.setTglHingga(tglAkhir);
            FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(0x7f0a004c, myticketfragment, MyTicketFragment.FRAGMENT_TAG);
            fragmenttransaction.commit();
        }
    }

}
