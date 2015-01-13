// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import com.neuron.mytelkom.utils.Utils;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class Subscriber
    implements Serializable
{

    private static final long serialVersionUID = 0x6dc61d3730192e58L;
    String callerId;
    String conferenceRole;
    String id;
    String isMute;
    String isSpeaking;
    String name;

    public Subscriber()
    {
    }

    public static ArrayList getListSubscriber(String s)
    {
        ArrayList arraylist = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (!jsonobject1.getString("rescode").equals("00")) goto _L2; else goto _L3
_L3:
        JSONArray jsonarray = new JSONArray(jsonobject1.getString("Result"));
        if (jsonarray.length() <= 0) goto _L2; else goto _L4
_L4:
        ArrayList arraylist1 = new ArrayList();
        int i = 0;
_L6:
        if (i >= jsonarray.length())
        {
            return arraylist1;
        }
        JSONObject jsonobject2 = jsonarray.getJSONObject(i);
        Subscriber subscriber = new Subscriber();
        subscriber.setName(jsonobject2.getString("name"));
        subscriber.setCallerId(jsonobject2.getString("callID"));
        subscriber.setConferenceRole(jsonobject2.getString("conferenceRole"));
        subscriber.setId(jsonobject2.getString("subscriberID"));
        subscriber.setIsMute(jsonobject2.getString("isMute"));
        subscriber.setIsSpeaking(jsonobject2.getString("isSpeaking"));
        arraylist1.add(subscriber);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
_L7:
        Utils.printLog(exception.getMessage());
        return arraylist;
        exception;
        arraylist = arraylist1;
        if (true) goto _L7; else goto _L2
_L2:
        return null;
    }

    public String getCallerId()
    {
        return callerId;
    }

    public String getConferenceRole()
    {
        return conferenceRole;
    }

    public String getId()
    {
        return id;
    }

    public String getIsMute()
    {
        return isMute;
    }

    public String getIsSpeaking()
    {
        return isSpeaking;
    }

    public String getName()
    {
        return name;
    }

    public void setCallerId(String s)
    {
        callerId = s;
    }

    public void setConferenceRole(String s)
    {
        conferenceRole = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setIsMute(String s)
    {
        isMute = s;
    }

    public void setIsSpeaking(String s)
    {
        isSpeaking = s;
    }

    public void setName(String s)
    {
        name = s;
    }
}
