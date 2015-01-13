// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import java.util.Iterator;
import org.json.JSONObject;

public class SampleActivity extends Activity
{

    public SampleActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        TextView textview;
        String s;
        super.onCreate(bundle);
        setContentView(0x7f030040);
        textview = (TextView)findViewById(0x7f0a00fd);
        s = "";
        JSONObject jsonobject;
        Iterator iterator;
        jsonobject = new JSONObject("{'0': {'a': 'abc'}, '1': {'a': 'def'}}");
        iterator = jsonobject.keys();
_L3:
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        textview.setText(s);
        return;
_L2:
        String s1;
        JSONObject jsonobject1 = new JSONObject(jsonobject.get((String)iterator.next()).toString());
        s1 = (new StringBuilder(String.valueOf(s))).append(" ").append(jsonobject1.getString("a")).toString();
        s = s1;
          goto _L3
        Exception exception;
        exception;
          goto _L1
    }
}
