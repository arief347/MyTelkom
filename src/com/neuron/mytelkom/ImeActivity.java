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
import com.neuron.mytelkom.fragment.ImeFragment;

public class ImeActivity extends BaseActivity
{

    public ImeActivity()
    {
    }

    public static void toImeFragment(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/ImeActivity));
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000a);
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        if (bundle == null)
        {
            ImeFragment imefragment = new ImeFragment();
            FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(0x7f0a0042, imefragment, ImeFragment.FRAGMENT_TAG);
            fragmenttransaction.commit();
        }
    }
}
