// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.view.View;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceParticipantActivity

class this._cls0
    implements android.view.vity._cls2
{

    final CreateNewConferenceParticipantActivity this$0;

    public void onClick(View view)
    {
        if (CreateNewConferenceParticipantActivity.access$0(CreateNewConferenceParticipantActivity.this).size() < 3)
        {
            Utils.showToast(CreateNewConferenceParticipantActivity.this, "Minimum conference participant is 3");
            return;
        }
        if (CreateNewConferenceParticipantActivity.access$1(CreateNewConferenceParticipantActivity.this))
        {
            updateConference();
            return;
        } else
        {
            createNewConference();
            return;
        }
    }

    ()
    {
        this$0 = CreateNewConferenceParticipantActivity.this;
        super();
    }
}
