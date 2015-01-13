// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class ConferenceKey
    implements Serializable
{

    private static final long serialVersionUID = 0xadcb78c0bc74974L;
    String conferenceId;
    String subConferenceId;

    public ConferenceKey()
    {
    }

    public String getConferenceId()
    {
        return conferenceId;
    }

    public String getSubConferenceId()
    {
        return subConferenceId;
    }

    public void setConferenceId(String s)
    {
        conferenceId = s;
    }

    public void setSubConferenceId(String s)
    {
        subConferenceId = s;
    }
}
