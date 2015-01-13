// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class ConferenceAttendees
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String email;
    String name;
    String phone;
    String regionId;
    String role;
    String type;

    public ConferenceAttendees()
    {
    }

    public String getEmail()
    {
        return email;
    }

    public String getName()
    {
        return name;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getRegionId()
    {
        return regionId;
    }

    public String getRole()
    {
        return role;
    }

    public String getType()
    {
        return type;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPhone(String s)
    {
        phone = s;
    }

    public void setRegionId(String s)
    {
        regionId = s;
    }

    public void setRole(String s)
    {
        role = s;
    }

    public void setType(String s)
    {
        type = s;
    }
}
