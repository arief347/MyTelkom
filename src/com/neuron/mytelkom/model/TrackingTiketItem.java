// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class TrackingTiketItem
    implements Serializable
{

    private static final long serialVersionUID = 0xe28c991dffb1d95aL;
    String dateTime;
    String status;

    public TrackingTiketItem()
    {
    }

    public String getDateTime()
    {
        return dateTime;
    }

    public String getStatus()
    {
        return status;
    }

    public void setDateTime(String s)
    {
        dateTime = s;
    }

    public void setStatus(String s)
    {
        status = s;
    }
}
