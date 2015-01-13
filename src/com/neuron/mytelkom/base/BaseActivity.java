// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.base;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.google.gson.Gson;
import com.loopj.android.http.AsyncHttpClient;
import com.neuron.mytelkom.utils.Preference;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

// Referenced classes of package com.neuron.mytelkom.base:
//            OnInitialiazeView

public class BaseActivity extends FragmentActivity
    implements OnInitialiazeView
{

    public AsyncHttpClient asyncHttpClient;
    public Gson gson;
    public Preference preference;

    public BaseActivity()
    {
    }

    protected void attachBaseContext(Context context)
    {
        super.attachBaseContext(new CalligraphyContextWrapper(context));
    }

    public void fetchResponse(String s)
    {
    }

    public void initialiazeIntent()
    {
    }

    public void initializeActions()
    {
    }

    public void initializeLibs()
    {
    }

    public void initializeRequest()
    {
    }

    public void initializeViews()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        preference = new Preference(this);
        asyncHttpClient = new AsyncHttpClient();
        asyncHttpClient.setTimeout(0x1d4c0);
        gson = new Gson();
    }

    public void setToView()
    {
    }
}
