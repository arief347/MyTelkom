// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.util.Log;
import org.apache.http.Header;

// Referenced classes of package com.loopj.android.http:
//            BaseJsonHttpResponseHandler

class val.jsonResponse
    implements Runnable
{

    final val.jsonResponse this$1;
    final Object val$jsonResponse;

    public void run()
    {
        onFailure(statusCode, headers, e, responseBody, val$jsonResponse);
    }

    l.e()
    {
        this$1 = final_e;
        val$jsonResponse = Object.this;
        super();
    }

    // Unreferenced inner class com/loopj/android/http/BaseJsonHttpResponseHandler$2

/* anonymous class */
    class BaseJsonHttpResponseHandler._cls2
        implements Runnable
    {

        final BaseJsonHttpResponseHandler this$0;
        final Throwable val$e;
        final Header val$headers[];
        final String val$responseBody;
        final int val$statusCode;

        public void run()
        {
            try
            {
                Object obj = parseResponse(responseBody);
                postRunnable(((BaseJsonHttpResponseHandler._cls2._cls1) (obj)). new BaseJsonHttpResponseHandler._cls2._cls1());
                return;
            }
            catch (Throwable throwable)
            {
                Log.d("BaseJsonHttpResponseHandler", "parseResponse thrown an problem", throwable);
            }
            postRunnable(new BaseJsonHttpResponseHandler._cls2._cls2());
        }

            
            {
                this$0 = final_basejsonhttpresponsehandler;
                responseBody = s;
                statusCode = i;
                headers = aheader;
                e = Throwable.this;
                super();
            }

        // Unreferenced inner class com/loopj/android/http/BaseJsonHttpResponseHandler$2$2

/* anonymous class */
        class BaseJsonHttpResponseHandler._cls2._cls2
            implements Runnable
        {

            final BaseJsonHttpResponseHandler._cls2 this$1;

            public void run()
            {
                onFailure(statusCode, headers, e, responseBody, null);
            }

                    
                    {
                        this$1 = BaseJsonHttpResponseHandler._cls2.this;
                        super();
                    }
        }

    }

}
