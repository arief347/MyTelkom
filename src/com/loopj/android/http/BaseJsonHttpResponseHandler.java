// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.util.Log;
import org.apache.http.Header;

// Referenced classes of package com.loopj.android.http:
//            TextHttpResponseHandler

public abstract class BaseJsonHttpResponseHandler extends TextHttpResponseHandler
{

    private static final String LOG_TAG = "BaseJsonHttpResponseHandler";

    public BaseJsonHttpResponseHandler()
    {
        super("UTF-8");
    }

    public BaseJsonHttpResponseHandler(String s)
    {
        super(s);
    }

    public final void onFailure(int i, Throwable throwable, String s)
    {
        super.onFailure(i, throwable, s);
    }

    public void onFailure(final int statusCode, final Header headers[], final String responseBody, final Throwable e)
    {
        if (responseBody != null)
        {
            (new Thread(new Runnable() {

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
                        postRunnable(((_cls1) (obj)). new Runnable() {

                            final _cls2 this$1;
                            final Object val$jsonResponse;

                            public void run()
                            {
                                onFailure(statusCode, headers, e, responseBody, jsonResponse);
                            }

            
            {
                this$1 = final__pcls2;
                jsonResponse = Object.this;
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

                        final _cls2 this$1;

                        public void run()
                        {
                            onFailure(statusCode, headers, e, responseBody, null);
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                }

            
            {
                this$0 = BaseJsonHttpResponseHandler.this;
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
            onFailure(statusCode, headers, e, null, null);
            return;
        }
    }

    public final void onFailure(int i, Header aheader[], Throwable throwable, String s)
    {
        super.onFailure(i, aheader, throwable, s);
    }

    public abstract void onFailure(int i, Header aheader[], Throwable throwable, String s, Object obj);

    public final void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
    }

    public final void onFailure(String s, Throwable throwable)
    {
        super.onFailure(s, throwable);
    }

    public final void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
    }

    public final void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable, s);
    }

    public final void onSuccess(int i, String s)
    {
        super.onSuccess(i, s);
    }

    public void onSuccess(final int statusCode, final Header headers[], final String responseBody)
    {
        if (statusCode != 204)
        {
            (new Thread(new Runnable() {

                final BaseJsonHttpResponseHandler this$0;
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
                                onSuccess(statusCode, headers, responseBody, jsonResponse);
                            }

            
            {
                this$1 = final__pcls1;
                jsonResponse = Object.this;
                super();
            }
                        });
                        return;
                    }
                    catch (Throwable throwable)
                    {
                        Log.d("BaseJsonHttpResponseHandler", "parseResponse thrown an problem", throwable);
                        postRunnable(throwable. new Runnable() {

                            final _cls1 this$1;
                            final Throwable val$t;

                            public void run()
                            {
                                onFailure(statusCode, headers, t, responseBody, null);
                            }

            
            {
                this$1 = final__pcls1;
                t = Throwable.this;
                super();
            }
                        });
                        return;
                    }
                }

            
            {
                this$0 = BaseJsonHttpResponseHandler.this;
                responseBody = s;
                statusCode = i;
                headers = aheader;
                super();
            }
            })).start();
            return;
        } else
        {
            onSuccess(statusCode, headers, null, null);
            return;
        }
    }

    public abstract void onSuccess(int i, Header aheader[], String s, Object obj);

    public final void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
    }

    public final void onSuccess(String s)
    {
        super.onSuccess(s);
    }

    protected abstract Object parseResponse(String s)
        throws Throwable;
}
