// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceRoomFragment

class nferenceActionType
    implements android.content.stener
{

    final ConferenceRoomFragment this$0;
    private final nferenceActionType val$type;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (val$type == nferenceActionType.STOP)
        {
            requestEndConference();
        }
    }

    nferenceActionType()
    {
        this$0 = final_conferenceroomfragment;
        val$type = nferenceActionType.this;
        super();
    }
}
