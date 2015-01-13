// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.os.AsyncTask;

// Referenced classes of package com.neuron.mytelkom:
//            SplashscreenActivity

class this._cls0 extends AsyncTask
{

    final SplashscreenActivity this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Void doInBackground(Void avoid[])
    {
        try
        {
            Thread.sleep(5000L);
        }
        catch (Exception exception) { }
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        super.onPostExecute(void1);
        route();
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }

    ()
    {
        this$0 = SplashscreenActivity.this;
        super();
    }
}
