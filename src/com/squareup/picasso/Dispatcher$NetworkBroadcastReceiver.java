// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Bundle;

// Referenced classes of package com.squareup.picasso:
//            Dispatcher, PicassoExecutorService, Utils

private class connectivityManager extends BroadcastReceiver
{

    private static final String EXTRA_AIRPLANE_STATE = "state";
    private final ConnectivityManager connectivityManager;
    final Dispatcher this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent != null)
        {
            String s = intent.getAction();
            Bundle bundle = intent.getExtras();
            if ("android.intent.action.AIRPLANE_MODE".equals(s))
            {
                dispatchAirplaneModeChange(bundle.getBoolean("state", false));
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(s))
            {
                dispatchNetworkStateChange(connectivityManager.getActiveNetworkInfo());
                return;
            }
        }
    }

    void register()
    {
        boolean flag;
        IntentFilter intentfilter;
        if ((service instanceof PicassoExecutorService) && Utils.hasPermission(context, "android.permission.ACCESS_NETWORK_STATE"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.AIRPLANE_MODE");
        if (flag)
        {
            intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        context.registerReceiver(this, intentfilter);
    }

    void unregister()
    {
        context.unregisterReceiver(this);
    }

    (Context context)
    {
        this$0 = Dispatcher.this;
        super();
        connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
    }
}
