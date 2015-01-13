// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.squareup.picasso:
//            Picasso, BitmapHunter, Action

static final class er extends Handler
{

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            throw new AssertionError((new StringBuilder()).append("Unknown handler message received: ").append(message.what).toString());

        case 8: // '\b'
            BitmapHunter bitmaphunter;
            for (Iterator iterator = ((List)message.obj).iterator(); iterator.hasNext(); bitmaphunter.picasso.complete(bitmaphunter))
            {
                bitmaphunter = (BitmapHunter)iterator.next();
            }

            break;

        case 3: // '\003'
            Action action = (Action)message.obj;
            Picasso.access$000(action.picasso, action.getTarget());
            break;
        }
    }

    er(Looper looper)
    {
        super(looper);
    }
}
