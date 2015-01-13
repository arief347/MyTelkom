// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.os.AsyncTask;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            SelectCityActivity

private class <init> extends AsyncTask
{

    final SelectCityActivity this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient String doInBackground(Void avoid[])
    {
        String s = preference.getCity();
        JSONObject jsonobject;
        Iterator iterator;
        jsonobject = new JSONObject(s);
        iterator = jsonobject.keys();
_L2:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_96;
        }
        JSONObject jsonobject1 = new JSONObject(jsonobject.get((String)iterator.next()).toString());
        SelectCityActivity.access$0(SelectCityActivity.this).add(jsonobject1.getString("LCOM"));
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        Utils.printLog(exception.getMessage());
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        super.onPostExecute(s);
        ArrayAdapter arrayadapter = new ArrayAdapter(SelectCityActivity.this, 0x1090003, 0x102000a, SelectCityActivity.access$0(SelectCityActivity.this));
        SelectCityActivity.access$1(SelectCityActivity.this).setAdapter(arrayadapter);
    }

    private _cls9()
    {
        this$0 = SelectCityActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
