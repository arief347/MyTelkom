// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceAddParticipantActivity, CreateNewConferenceParticipantActivity

class this._cls0
    implements android.content.y._cls4
{

    final CreateNewConferenceAddParticipantActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent();
        intent.putExtra(CreateNewConferenceAddParticipantActivity.KEY_POSITION, position);
        setResult(CreateNewConferenceParticipantActivity.DELETE_PARTICIPANT_RESULT_CODE, intent);
        finish();
    }

    ()
    {
        this$0 = CreateNewConferenceAddParticipantActivity.this;
        super();
    }
}
