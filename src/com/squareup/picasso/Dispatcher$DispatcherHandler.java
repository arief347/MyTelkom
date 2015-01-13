// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.squareup.picasso:
//            Picasso, Action, Dispatcher, BitmapHunter

private static class dispatcher extends Handler
{

    private final Dispatcher dispatcher;

    public void handleMessage(final Message msg)
    {
        boolean flag = true;
        Dispatcher dispatcher1;
        switch (msg.what)
        {
        case 3: // '\003'
        case 8: // '\b'
        default:
            Picasso.HANDLER.post(new Runnable() {

                final Dispatcher.DispatcherHandler this$0;
                final Message val$msg;

                public void run()
                {
                    throw new AssertionError((new StringBuilder()).append("Unknown handler message received: ").append(msg.what).toString());
                }

            
            {
                this$0 = Dispatcher.DispatcherHandler.this;
                msg = message;
                super();
            }
            });
            return;

        case 1: // '\001'
            Action action1 = (Action)msg.obj;
            dispatcher.performSubmit(action1);
            return;

        case 2: // '\002'
            Action action = (Action)msg.obj;
            dispatcher.performCancel(action);
            return;

        case 4: // '\004'
            BitmapHunter bitmaphunter2 = (BitmapHunter)msg.obj;
            dispatcher.performComplete(bitmaphunter2);
            return;

        case 5: // '\005'
            BitmapHunter bitmaphunter1 = (BitmapHunter)msg.obj;
            dispatcher.performRetry(bitmaphunter1);
            return;

        case 6: // '\006'
            BitmapHunter bitmaphunter = (BitmapHunter)msg.obj;
            dispatcher.performError(bitmaphunter);
            return;

        case 7: // '\007'
            dispatcher.performBatchComplete();
            return;

        case 9: // '\t'
            NetworkInfo networkinfo = (NetworkInfo)msg.obj;
            dispatcher.performNetworkStateChange(networkinfo);
            return;

        case 10: // '\n'
            dispatcher1 = dispatcher;
            break;
        }
        if (msg.arg1 != flag)
        {
            flag = false;
        }
        dispatcher1.performAirplaneModeChange(flag);
    }

    public _cls1.val.msg(Looper looper, Dispatcher dispatcher1)
    {
        super(looper);
        dispatcher = dispatcher1;
    }
}
