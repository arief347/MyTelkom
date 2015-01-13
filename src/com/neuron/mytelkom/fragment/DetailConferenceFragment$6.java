// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetailConferenceFragment

class erenceActionType
    implements android.content.ener
{

    final DetailConferenceFragment this$0;
    private final erenceActionType val$type;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (val$type == erenceActionType.CANCEL)
        {
            requestCancelConference();
        }
    }

    erenceActionType()
    {
        this$0 = final_detailconferencefragment;
        val$type = erenceActionType.this;
        super();
    }
}
