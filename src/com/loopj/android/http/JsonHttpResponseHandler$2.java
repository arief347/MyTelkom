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

class val.e
    implements Runnable
{

    final JsonHttpResponseHandler this$0;
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

                final JsonHttpResponseHandler._cls2 this$1;
                final Object val$jsonResponse;

                public void run()
                {
                    if (jsonResponse instanceof JSONObject)
                    {
                        onFailure(statusCode, headers, e, (JSONObject)jsonResponse);
                        return;
                    }
                    if (jsonResponse instanceof JSONArray)
                    {
                        onFailure(statusCode, headers, e, (JSONArray)jsonResponse);
                        return;
                    }
                    if (jsonResponse instanceof String)
                    {
                        onFailure(statusCode, headers, e, (String)jsonResponse);
                        return;
                    } else
                    {
                        onFailure(new JSONException((new StringBuilder()).append("Unexpected type ").append(jsonResponse.getClass().getName()).toString()), (JSONObject)null);
                        return;
                    }
                }

            
            {
                this$1 = JsonHttpResponseHandler._cls2.this;
                jsonResponse = obj;
                super();
            }
            });
            return;
        }
        catch (final JSONException ex)
        {
            postRunnable(new Runnable() {

                final JsonHttpResponseHandler._cls2 this$1;
                final JSONException val$ex;

                public void run()
                {
                    onFailure(statusCode, headers, ex, (JSONObject)null);
                }

            
            {
                this$1 = JsonHttpResponseHandler._cls2.this;
                ex = jsonexception;
                super();
            }
            });
        }
    }

    _cls2.val.ex()
    {
        this$0 = final_jsonhttpresponsehandler;
        val$responseBody = s;
        val$statusCode = i;
        val$headers = aheader;
        val$e = Throwable.this;
        super();
    }
}
