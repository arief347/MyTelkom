// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class MyTicketItem
    implements Serializable
{

    private static final long serialVersionUID = 0x8472bf1bde5baf01L;
    String date;
    String no;
    String status;

    public MyTicketItem()
    {
    }

    public String getDate()
    {
        return date;
    }

    public String getNo()
    {
        return no;
    }

    public String getStatus()
    {
        return status;
    }

    public void setDate(String s)
    {
        date = s;
    }

    public void setNo(String s)
    {
        no = s;
    }

    public void setStatus(String s)
    {
        status = s;
    }
}
