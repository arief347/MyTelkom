// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.content.Intent;
import android.net.Uri;
import android.view.View;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetailConferenceFragment

class this._cls0
    implements android.view.renceFragment._cls2
{

    final DetailConferenceFragment this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:08041000"));
        startActivity(intent);
    }

    ()
    {
        this$0 = DetailConferenceFragment.this;
        super();
    }
}
