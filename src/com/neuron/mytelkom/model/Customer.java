// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class Customer
    implements Serializable
{

    private static final long serialVersionUID = 0x7f77d9146b0be63cL;
    String address;
    String comercial;
    String location;
    String name;
    String paymentDate;
    String paymentTime;

    public Customer()
    {
    }

    public String getAddress()
    {
        return address;
    }

    public String getComercial()
    {
        return comercial;
    }

    public String getLocation()
    {
        return location;
    }

    public String getName()
    {
        return name;
    }

    public String getPaymentDate()
    {
        return paymentDate;
    }

    public String getPaymentTime()
    {
        return paymentTime;
    }

    public void setAddress(String s)
    {
        address = s;
    }

    public void setComercial(String s)
    {
        comercial = s;
    }

    public void setLocation(String s)
    {
        location = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPaymentDate(String s)
    {
        paymentDate = s;
    }

    public void setPaymentTime(String s)
    {
        paymentTime = s;
    }
}
