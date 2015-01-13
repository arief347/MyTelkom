// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.UnknownHostException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.loopj.android.http:
//            ResponseHandlerInterface

class AsyncHttpRequest
    implements Runnable
{

    private final AbstractHttpClient client;
    private final HttpContext context;
    private int executionCount;
    private final HttpUriRequest request;
    private final ResponseHandlerInterface responseHandler;

    public AsyncHttpRequest(AbstractHttpClient abstracthttpclient, HttpContext httpcontext, HttpUriRequest httpurirequest, ResponseHandlerInterface responsehandlerinterface)
    {
        client = abstracthttpclient;
        context = httpcontext;
        request = httpurirequest;
        responseHandler = responsehandlerinterface;
    }

    private void makeRequest()
        throws IOException
    {
        if (!Thread.currentThread().isInterrupted())
        {
            if (request.getURI().getScheme() == null)
            {
                throw new MalformedURLException("No valid URI scheme was provided");
            }
            org.apache.http.HttpResponse httpresponse = client.execute(request, context);
            if (!Thread.currentThread().isInterrupted() && responseHandler != null)
            {
                responseHandler.sendResponseMessage(httpresponse);
            }
        }
    }

    private void makeRequestWithRetries()
        throws IOException
    {
        boolean flag;
        HttpRequestRetryHandler httprequestretryhandler;
        IOException ioexception;
        flag = true;
        httprequestretryhandler = client.getHttpRequestRetryHandler();
        ioexception = null;
_L10:
        if (!flag) goto _L2; else goto _L1
_L1:
        makeRequest();
        return;
        UnknownHostException unknownhostexception;
        unknownhostexception;
        IOException ioexception3 = new IOException((new StringBuilder()).append("UnknownHostException exception: ").append(unknownhostexception.getMessage()).toString());
        if (executionCount <= 0) goto _L4; else goto _L3
_L3:
        int k;
        k = 1 + executionCount;
        executionCount = k;
        if (!httprequestretryhandler.retryRequest(ioexception3, k, context)) goto _L4; else goto _L5
_L5:
        flag = true;
_L8:
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        if (responseHandler == null)
        {
            break; /* Loop/switch isn't completed */
        }
        responseHandler.sendRetryMessage();
        ioexception = ioexception3;
        continue; /* Loop/switch isn't completed */
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
        NullPointerException nullpointerexception;
        nullpointerexception;
        ioexception3 = new IOException((new StringBuilder()).append("NPE in HttpClient: ").append(nullpointerexception.getMessage()).toString());
        IOException ioexception1;
        Exception exception;
        IOException ioexception2;
        boolean flag1;
        try
        {
            int j = 1 + executionCount;
            executionCount = j;
            flag = httprequestretryhandler.retryRequest(ioexception3, j, context);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception) { }
          goto _L6
        ioexception2;
        ioexception3 = ioexception2;
        int i = 1 + executionCount;
        executionCount = i;
        flag1 = httprequestretryhandler.retryRequest(ioexception3, i, context);
        flag = flag1;
        if (true) goto _L8; else goto _L7
_L2:
        ioexception1 = ioexception;
        throw ioexception1;
        exception;
        ioexception;
_L6:
        do
        {
            Log.e("AsyncHttpRequest", "Unhandled exception origin cause", exception);
            ioexception1 = new IOException((new StringBuilder()).append("Unhandled exception: ").append(exception.getMessage()).toString());
        } while (false);
_L7:
        ioexception = ioexception3;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void run()
    {
        if (responseHandler != null)
        {
            responseHandler.sendStartMessage();
        }
        makeRequestWithRetries();
_L2:
        if (responseHandler != null)
        {
            responseHandler.sendFinishMessage();
        }
        return;
        IOException ioexception;
        ioexception;
        if (responseHandler != null)
        {
            responseHandler.sendFailureMessage(0, null, null, ioexception);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }
}
