// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceRoomFragment

class this._cls0
    implements android.view.eRoomFragment._cls2
{

    final ConferenceRoomFragment this$0;

    public void onClick(View view)
    {
        showConferenceActionDialog("End Conference", "Do you wish to end this conference", nferenceActionType.STOP);
    }

    nferenceActionType()
    {
        this$0 = ConferenceRoomFragment.this;
        super();
    }
}
