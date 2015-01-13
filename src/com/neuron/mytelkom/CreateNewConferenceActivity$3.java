// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceActivity

class this._cls0
    implements android.widget.ener
{

    final CreateNewConferenceActivity this$0;

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        if (i == 1 && CreateNewConferenceActivity.access$10(CreateNewConferenceActivity.this).getVisibility() == 0)
        {
            CreateNewConferenceActivity.access$10(CreateNewConferenceActivity.this).setVisibility(8);
        }
        if (i == 0 && CreateNewConferenceActivity.access$10(CreateNewConferenceActivity.this).getVisibility() == 8)
        {
            CreateNewConferenceActivity.access$10(CreateNewConferenceActivity.this).setVisibility(0);
        }
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    ()
    {
        this$0 = CreateNewConferenceActivity.this;
        super();
    }
}
