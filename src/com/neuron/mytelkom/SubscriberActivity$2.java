// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.view.View;
import android.widget.AdapterView;
import com.neuron.mytelkom.model.Subscriber;
import java.util.ArrayList;

// Referenced classes of package com.neuron.mytelkom:
//            SubscriberActivity

class this._cls0
    implements android.widget.ckListener
{

    final SubscriberActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        SubscriberActivity.access$4(SubscriberActivity.this, (Subscriber)SubscriberActivity.access$3(SubscriberActivity.this).get(i));
    }

    tener()
    {
        this$0 = SubscriberActivity.this;
        super();
    }
}
