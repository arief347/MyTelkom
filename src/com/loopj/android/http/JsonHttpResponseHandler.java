// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.util.Log;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.loopj.android.http:
//            TextHttpResponseHandler

public class JsonHttpResponseHandler extends TextHttpResponseHandler
{

    private static final String LOG_TAG = "JsonHttpResponseHandler";

    public JsonHttpResponseHandler()
    {
        super("UTF-8");
    }

    public JsonHttpResponseHandler(String s)
    {
        super(s);
    }

    public void onFailure(int i, Throwable throwable, JSONArray jsonarray)
    {
        onFailure(throwable, jsonarray);
    }

    public void onFailure(int i, Throwable throwable, JSONObject jsonobject)
    {
        onFailure(throwable, jsonobject);
    }

    public void onFailure(final int statusCode, final Header headers[], final String responseBody, final Throwable e)
    {
        if (responseBody != null)
        {
            (new Thread(new Runnable() {

                final JsonHttpResponseHandler this$0;
                final Throwable val$e;
                final Header val$headers[];
                final String val$responseBody;
                final int val$statusCode;

                public void run()
                {
                    try
                    {
                        Object obj = parseResponse(responseBody);
                        postRunnable(((_cls1) (obj)). new Runnable() {

                            final _cls2 this$1;
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
                this$1 = final__pcls2;
                jsonResponse = Object.this;
                super();
            }
                        });
                        return;
                    }
                    catch (JSONException jsonexception)
                    {
                        postRunnable(jsonexception. new Runnable() {

                            final _cls2 this$1;
                            final JSONException val$ex;

                            public void run()
                            {
                                onFailure(statusCode, headers, ex, (JSONObject)null);
                            }

            
            {
                this$1 = final__pcls2;
                ex = JSONException.this;
                super();
            }
                        });
                    }
                }

            
            {
                this$0 = JsonHttpResponseHandler.this;
                responseBody = s;
                statusCode = i;
                headers = aheader;
                e = throwable;
                super();
            }
            })).start();
            return;
        } else
        {
            Log.v("JsonHttpResponseHandler", "response body is null, calling onFailure(Throwable, JSONObject)");
            onFailure(statusCode, headers, e, (JSONObject)null);
            return;
        }
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONArray jsonarray)
    {
        onFailure(i, throwable, jsonarray);
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, JSONObject jsonobject)
    {
        onFailure(i, throwable, jsonobject);
    }

    public void onFailure(Throwable throwable, JSONArray jsonarray)
    {
        onFailure(throwable);
    }

    public void onFailure(Throwable throwable, JSONObject jsonobject)
    {
        onFailure(throwable);
    }

    public void onSuccess(int i, JSONArray jsonarray)
    {
        onSuccess(jsonarray);
    }

    public void onSuccess(int i, JSONObject jsonobject)
    {
        onSuccess(jsonobject);
    }

    public void onSuccess(final int statusCode, final Header headers[], final String responseBody)
    {
        if (statusCode != 204)
        {
            (new Thread(new Runnable() {

                final JsonHttpResponseHandler this$0;
                final Header val$headers[];
                final String val$responseBody;
                final int val$statusCode;

                public void run()
                {
                    try
                    {
                        Object obj = parseResponse(responseBody);
                        postRunnable(((_cls1) (obj)). new Runnable() {

                            final _cls1 this$1;
                            final Object val$jsonResponse;

                            public void run()
                            {
                                if (jsonResponse instanceof JSONObject)
                                {
                                    onSuccess(statusCode, headers, (JSONObject)jsonResponse);
                                    return;
                                }
                                if (jsonResponse instanceof JSONArray)
                                {
                                    onSuccess(statusCode, headers, (JSONArray)jsonResponse);
                                    return;
                                }
                                if (jsonResponse instanceof String)
                                {
                                    onSuccess(statusCode, headers, (String)jsonResponse);
                                    return;
                                } else
                                {
                                    onFailure(new JSONException((new StringBuilder()).append("Unexpected type ").append(jsonResponse.getClass().getName()).toString()), (JSONObject)null);
                                    return;
                                }
                            }

            
            {
                this$1 = final__pcls1;
                jsonResponse = Object.this;
                super();
            }
                        });
                        return;
                    }
                    catch (JSONException jsonexception)
                    {
                        postRunnable(jsonexception. new Runnable() {

                            final _cls1 this$1;
                            final JSONException val$ex;

                            public void run()
                            {
                                onFailure(ex, (JSONObject)null);
                            }

            
            {
                this$1 = final__pcls1;
                ex = JSONException.this;
                super();
            }
                        });
                    }
                }

            
            {
                this$0 = JsonHttpResponseHandler.this;
                responseBody = s;
                statusCode = i;
                headers = aheader;
                super();
            }
            })).start();
            return;
        } else
        {
            onSuccess(statusCode, headers, new JSONObject());
            return;
        }
    }

    public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
    {
        onSuccess(i, jsonarray);
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        onSuccess(i, jsonobject);
    }

    public void onSuccess(JSONArray jsonarray)
    {
    }

    public void onSuccess(JSONObject jsonobject)
    {
    }

    protected Object parseResponse(String s)
        throws JSONException
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        String s1;
        s1 = s.trim();
        if (!s1.startsWith("{"))
        {
            boolean flag = s1.startsWith("[");
            obj = null;
            if (!flag)
            {
                continue; /* Loop/switch isn't completed */
            }
        }
        obj = (new JSONTokener(s1)).nextValue();
        if (obj != null) goto _L4; else goto _L3
_L3:
        return s1;
    }
}
