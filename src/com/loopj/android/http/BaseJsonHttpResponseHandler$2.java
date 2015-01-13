// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.util.Log;
import org.apache.http.Header;

// Referenced classes of package com.loopj.android.http:
//            BaseJsonHttpResponseHandler

class val.e
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
            final Object jsonResponse = parseResponse(val$responseBody);
            postRunnable(new Runnable() {

                final BaseJsonHttpResponseHandler._cls2 this$1;
                final Object val$jsonResponse;

                public void run()
                {
                    onFailure(statusCode, headers, e, responseBody, jsonResponse);
                }

            
            {
                this$1 = BaseJsonHttpResponseHandler._cls2.this;
                jsonResponse = obj;
                super();
            }
            });
            return;
        }
        catch (Throwable throwable)
        {
            Log.d("BaseJsonHttpResponseHandler", "parseResponse thrown an problem", throwable);
        }
        postRunnable(new Runnable() {

            final BaseJsonHttpResponseHandler._cls2 this$1;

            public void run()
            {
                onFailure(statusCode, headers, e, responseBody, null);
            }

            
            {
                this$1 = BaseJsonHttpResponseHandler._cls2.this;
                super();
            }
        });
    }

    _cls2.this._cls1()
    {
        this$0 = final_basejsonhttpresponsehandler;
        val$responseBody = s;
        val$statusCode = i;
        val$headers = aheader;
        val$e = Throwable.this;
        super();
    }
}
