// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import com.neuron.mytelkom.utils.Utils;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class HelpItem
    implements Serializable
{

    private static final long serialVersionUID = 0xfb83bb4d27e448f1L;
    String content;
    String id;
    String title;

    public HelpItem()
    {
    }

    public static ArrayList getListHelp(String s)
    {
        ArrayList arraylist = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = jsonobject.getJSONArray("Result");
        if (jsonarray.length() <= 0) goto _L2; else goto _L3
_L3:
        ArrayList arraylist1 = new ArrayList();
        int i = 0;
_L5:
        if (i >= jsonarray.length())
        {
            return arraylist1;
        }
        HelpItem helpitem = new HelpItem();
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        helpitem.setId(jsonobject1.getString("page_id"));
        helpitem.setTitle(jsonobject1.getString("page_title"));
        helpitem.setContent(jsonobject1.getString("page_content"));
        arraylist1.add(helpitem);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
_L6:
        Utils.printLog(exception.getMessage());
        return arraylist;
        exception;
        arraylist = arraylist1;
        if (true) goto _L6; else goto _L2
_L2:
        return null;
    }

    public String getContent()
    {
        return content;
    }

    public String getId()
    {
        return id;
    }

    public String getTitle()
    {
        return title;
    }

    public void setContent(String s)
    {
        content = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }
}
