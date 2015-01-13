// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.loopj.android.http:
//            JsonHttpResponseHandler

class val.jsonResponse
    implements Runnable
{

    final val.jsonResponse this$1;
    final Object val$jsonResponse;

    public void run()
    {
        if (val$jsonResponse instanceof JSONObject)
        {
            onSuccess(statusCode, headers, (JSONObject)val$jsonResponse);
            return;
        }
        if (val$jsonResponse instanceof JSONArray)
        {
            onSuccess(statusCode, headers, (JSONArray)val$jsonResponse);
            return;
        }
        if (val$jsonResponse instanceof String)
        {
            onSuccess(statusCode, headers, (String)val$jsonResponse);
            return;
        } else
        {
            onFailure(new JSONException((new StringBuilder()).append("Unexpected type ").append(val$jsonResponse.getClass().getName()).toString()), (JSONObject)null);
            return;
        }
    }

    l.headers()
    {
        this$1 = final_headers;
        val$jsonResponse = Object.this;
        super();
    }

    // Unreferenced inner class com/loopj/android/http/JsonHttpResponseHandler$1

/* anonymous class */
    class JsonHttpResponseHandler._cls1
        implements Runnable
    {

        final JsonHttpResponseHandler this$0;
        final Header val$headers[];
        final String val$responseBody;
        final int val$statusCode;

        public void run()
        {
            try
            {
                Object obj = parseResponse(responseBody);
                postRunnable(((JsonHttpResponseHandler._cls1._cls1) (obj)). new JsonHttpResponseHandler._cls1._cls1());
                return;
            }
            catch (final JSONException ex)
            {
                postRunnable(new JsonHttpResponseHandler._cls1._cls2());
            }
        }

            
            {
                this$0 = final_jsonhttpresponsehandler;
                responseBody = s;
                statusCode = i;
                headers = _5B_Lorg.apache.http.Header_3B_.this;
                super();
            }

        // Unreferenced inner class com/loopj/android/http/JsonHttpResponseHandler$1$2

/* anonymous class */
        class JsonHttpResponseHandler._cls1._cls2
            implements Runnable
        {

            final JsonHttpResponseHandler._cls1 this$1;
            final JSONException val$ex;

            public void run()
            {
                onFailure(ex, (JSONObject)null);
            }

                    
                    {
                        this$1 = JsonHttpResponseHandler._cls1.this;
                        ex = jsonexception;
                        super();
                    }
        }

    }

}
