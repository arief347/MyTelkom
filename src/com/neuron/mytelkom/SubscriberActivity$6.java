// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.widget.CompoundButton;
import com.neuron.mytelkom.model.Subscriber;

// Referenced classes of package com.neuron.mytelkom:
//            SubscriberActivity

class val.subscriber
    implements android.widget.kedChangeListener
{

    final SubscriberActivity this$0;
    private final Subscriber val$subscriber;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            subscriberActionControll(bscriberAction.MIC_OFF, val$subscriber);
            return;
        } else
        {
            subscriberActionControll(bscriberAction.MIC_ON, val$subscriber);
            return;
        }
    }

    bscriberAction()
    {
        this$0 = final_subscriberactivity;
        val$subscriber = Subscriber.this;
        super();
    }
}
