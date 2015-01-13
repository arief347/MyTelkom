// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.base;

import android.app.Application;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;

public class MyTelkomApplication extends Application
{

    public MyTelkomApplication()
    {
    }

    public void onCreate()
    {
        super.onCreate();
        CalligraphyConfig.initDefault("fonts/MyriadPro-Regular.otf", 0x7f010000);
    }
}
