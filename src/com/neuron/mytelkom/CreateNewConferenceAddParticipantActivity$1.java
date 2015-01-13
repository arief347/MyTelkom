// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.content.Intent;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.neuron.mytelkom.model.ConferenceAttendees;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceAddParticipantActivity, CreateNewConferenceParticipantActivity

class this._cls0
    implements android.view.vity._cls1
{

    final CreateNewConferenceAddParticipantActivity this$0;

    public void onClick(View view)
    {
        String s = CreateNewConferenceAddParticipantActivity.access$0(CreateNewConferenceAddParticipantActivity.this).getText().toString().trim();
        String s1 = CreateNewConferenceAddParticipantActivity.access$1(CreateNewConferenceAddParticipantActivity.this).getText().toString().trim();
        String s2 = CreateNewConferenceAddParticipantActivity.access$2(CreateNewConferenceAddParticipantActivity.this).getText().toString().trim();
        ConferenceAttendees conferenceattendees = new ConferenceAttendees();
        conferenceattendees.setName(s);
        conferenceattendees.setEmail(s1);
        conferenceattendees.setPhone(s2);
        Intent intent = new Intent();
        intent.putExtra(CreateNewConferenceParticipantActivity.NEW_USER, conferenceattendees);
        setResult(CreateNewConferenceParticipantActivity.ADD_PARTICIPANT_RESULT_CODE, intent);
        finish();
    }

    ()
    {
        this$0 = CreateNewConferenceAddParticipantActivity.this;
        super();
    }
}
