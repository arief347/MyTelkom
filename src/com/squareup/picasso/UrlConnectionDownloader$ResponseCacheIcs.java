// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.content.Context;
import android.net.http.HttpResponseCache;
import java.io.IOException;

// Referenced classes of package com.squareup.picasso:
//            Utils, UrlConnectionDownloader

private static class 
{

    static Object install(Context context)
        throws IOException
    {
        java.io.File file = Utils.createDefaultCacheDir(context);
        HttpResponseCache httpresponsecache = HttpResponseCache.getInstalled();
        if (httpresponsecache == null)
        {
            httpresponsecache = HttpResponseCache.install(file, Utils.calculateDiskCacheSize(file));
        }
        return httpresponsecache;
    }

    private ()
    {
    }
}
