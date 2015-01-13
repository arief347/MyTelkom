// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.widget.EditText;
import android.widget.TimePicker;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceActivity

class this._cls0
    implements android.app.ener
{

    final CreateNewConferenceActivity this$0;

    public void onTimeSet(TimePicker timepicker, int i, int j)
    {
        CreateNewConferenceActivity.access$4(CreateNewConferenceActivity.this, i);
        CreateNewConferenceActivity.access$5(CreateNewConferenceActivity.this, j);
        String s = (new StringBuilder()).append(CreateNewConferenceActivity.access$7(CreateNewConferenceActivity.access$6(CreateNewConferenceActivity.this))).append(":").append(CreateNewConferenceActivity.access$7(CreateNewConferenceActivity.access$8(CreateNewConferenceActivity.this))).toString();
        CreateNewConferenceActivity.access$9(CreateNewConferenceActivity.this).setText(s);
    }

    ()
    {
        this$0 = CreateNewConferenceActivity.this;
        super();
    }
}
