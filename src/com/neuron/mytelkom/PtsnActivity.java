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
import com.neuron.mytelkom.fragment.PstnFragment;

public class PtsnActivity extends BaseActivity
{

    public PtsnActivity()
    {
    }

    public static void toPtsnActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/PtsnActivity));
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030011);
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        if (bundle == null)
        {
            PstnFragment pstnfragment = new PstnFragment();
            FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(0x7f0a005c, pstnfragment, PstnFragment.FRAGMENT_TAG);
            fragmenttransaction.commit();
        }
    }
}
