// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceFragment

class this._cls0
    implements android.widget.ckListener
{

    final ConferenceFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        toItemPositionSelected(i);
    }

    ()
    {
        this$0 = ConferenceFragment.this;
        super();
    }
}
