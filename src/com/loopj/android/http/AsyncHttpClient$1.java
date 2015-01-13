// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.loopj.android.http:
//            AsyncHttpClient

class this._cls0
    implements HttpRequestInterceptor
{

    final AsyncHttpClient this$0;

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (!httprequest.containsHeader("Accept-Encoding"))
        {
            httprequest.addHeader("Accept-Encoding", "gzip");
        }
        String s;
        for (Iterator iterator = AsyncHttpClient.access$000(AsyncHttpClient.this).keySet().iterator(); iterator.hasNext(); httprequest.addHeader(s, (String)AsyncHttpClient.access$000(AsyncHttpClient.this).get(s)))
        {
            s = (String)iterator.next();
        }

    }

    ()
    {
        this$0 = AsyncHttpClient.this;
        super();
    }
}
