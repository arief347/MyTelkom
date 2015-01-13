// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.view.View;
import android.widget.AdapterView;
import com.neuron.mytelkom.model.ConferenceAttendees;
import java.util.ArrayList;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceParticipantActivity, CreateNewConferenceAddParticipantActivity

class this._cls0
    implements android.widget.ty._cls3
{

    final CreateNewConferenceParticipantActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        CreateNewConferenceAddParticipantActivity.toCreateNewConferenceAddParticipantActivity(CreateNewConferenceParticipantActivity.this, .ParticipantFormType.EDIT, (ConferenceAttendees)CreateNewConferenceParticipantActivity.access$0(CreateNewConferenceParticipantActivity.this).get(i), i);
    }

    ()
    {
        this$0 = CreateNewConferenceParticipantActivity.this;
        super();
    }
}
