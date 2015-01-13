// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class PstnDetailSummary
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String abwtp;
    String currency;
    String date;
    String detail;
    String duedate;
    String faedn;
    String installment;
    String location;
    String namount;
    String opbel;
    String status;
    String time;

    public PstnDetailSummary()
    {
    }

    public String getAbwtp()
    {
        return abwtp;
    }

    public String getCurrency()
    {
        return currency;
    }

    public String getDate()
    {
        return date;
    }

    public String getDetail()
    {
        return detail;
    }

    public String getDuedate()
    {
        return duedate;
    }

    public String getFaedn()
    {
        return faedn;
    }

    public String getInstallment()
    {
        return installment;
    }

    public String getLocation()
    {
        return location;
    }

    public String getNamount()
    {
        return namount;
    }

    public String getOpbel()
    {
        return opbel;
    }

    public String getStatus()
    {
        return status;
    }

    public String getTime()
    {
        return time;
    }

    public void setAbwtp(String s)
    {
        abwtp = s;
    }

    public void setCurrency(String s)
    {
        currency = s;
    }

    public void setDate(String s)
    {
        date = s;
    }

    public void setDetail(String s)
    {
        detail = s;
    }

    public void setDuedate(String s)
    {
        duedate = s;
    }

    public void setFaedn(String s)
    {
        faedn = s;
    }

    public void setInstallment(String s)
    {
        installment = s;
    }

    public void setLocation(String s)
    {
        location = s;
    }

    public void setNamount(String s)
    {
        namount = s;
    }

    public void setOpbel(String s)
    {
        opbel = s;
    }

    public void setStatus(String s)
    {
        status = s;
    }

    public void setTime(String s)
    {
        time = s;
    }
}
