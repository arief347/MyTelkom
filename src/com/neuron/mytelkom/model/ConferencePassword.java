// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class ConferencePassword
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String autoMake;
    String conferenceRole;
    String password;

    public ConferencePassword()
    {
    }

    public String getAutoMake()
    {
        return autoMake;
    }

    public String getConferenceRole()
    {
        return conferenceRole;
    }

    public String getPassword()
    {
        return password;
    }

    public void setAutoMake(String s)
    {
        autoMake = s;
    }

    public void setConferenceRole(String s)
    {
        conferenceRole = s;
    }

    public void setPassword(String s)
    {
        password = s;
    }
}
