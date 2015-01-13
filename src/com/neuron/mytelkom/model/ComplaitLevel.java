// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

public class ComplaitLevel
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String level;
    String name;

    public ComplaitLevel()
    {
    }

    public String getLevel()
    {
        return level;
    }

    public String getName()
    {
        return name;
    }

    public void setLevel(String s)
    {
        level = s;
    }

    public void setName(String s)
    {
        name = s;
    }
}
