// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class RetryHandler
    implements HttpRequestRetryHandler
{

    private static HashSet exceptionBlacklist;
    private static HashSet exceptionWhitelist;
    private final int maxRetries;
    private final int retrySleepTimeMS;

    public RetryHandler(int i, int j)
    {
        maxRetries = i;
        retrySleepTimeMS = j;
    }

    protected boolean isInList(HashSet hashset, Throwable throwable)
    {
        for (Iterator iterator = hashset.iterator(); iterator.hasNext();)
        {
            if (((Class)iterator.next()).isInstance(throwable))
            {
                return true;
            }
        }

        return false;
    }

    public boolean retryRequest(IOException ioexception, int i, HttpContext httpcontext)
    {
        boolean flag = true;
        Boolean boolean1 = (Boolean)httpcontext.getAttribute("http.request_sent");
        boolean flag1;
        if (boolean1 != null && boolean1.booleanValue())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (i > maxRetries)
        {
            flag = false;
        } else
        if (isInList(exceptionBlacklist, ioexception))
        {
            flag = false;
        } else
        if (isInList(exceptionWhitelist, ioexception))
        {
            flag = true;
        } else
        if (!flag1)
        {
            flag = true;
        }
        if (flag)
        {
            HttpUriRequest httpurirequest = (HttpUriRequest)httpcontext.getAttribute("http.request");
            if (httpurirequest == null)
            {
                return false;
            }
            if (!httpurirequest.getMethod().equals("POST"))
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        if (flag)
        {
            SystemClock.sleep(retrySleepTimeMS);
        } else
        {
            ioexception.printStackTrace();
        }
        return flag;
    }

    static 
    {
        exceptionWhitelist = new HashSet();
        exceptionBlacklist = new HashSet();
        exceptionWhitelist.add(org/apache/http/NoHttpResponseException);
        exceptionWhitelist.add(java/net/UnknownHostException);
        exceptionWhitelist.add(java/net/SocketException);
        exceptionBlacklist.add(java/io/InterruptedIOException);
        exceptionBlacklist.add(javax/net/ssl/SSLException);
    }
}
