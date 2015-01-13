// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.widget.DrawerLayout;
import android.view.View;

// Referenced classes of package com.neuron.mytelkom:
//            MainActivity

class out extends ActionBarDrawerToggle
{

    final MainActivity this$0;

    public void onDrawerClosed(View view)
    {
        invalidateOptionsMenu();
    }

    public void onDrawerOpened(View view)
    {
        getActionBar().setLogo(0x7f02000a);
        invalidateOptionsMenu();
    }

    out(Activity activity, DrawerLayout drawerlayout, int i, int j, int k)
    {
        this$0 = MainActivity.this;
        super(activity, drawerlayout, i, j, k);
    }
}
