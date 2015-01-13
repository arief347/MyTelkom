// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import java.io.Serializable;

// Referenced classes of package com.neuron.mytelkom.model:
//            ConferenceAttendees

public class ConferenceAddedItem extends ConferenceAttendees
    implements Serializable
{

    private static final long serialVersionUID = 0x4742b87973a75246L;
    String email;
    String name;
    String noHp;

    public ConferenceAddedItem()
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

    public String getNoHp()
    {
        return noHp;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNoHp(String s)
    {
        noHp = s;
    }
}
