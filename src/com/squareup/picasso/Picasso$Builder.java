// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.content.Context;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.squareup.picasso:
//            Utils, LruCache, PicassoExecutorService, Stats, 
//            Picasso, Dispatcher, Cache, Downloader

public static class nContext
{

    private Cache cache;
    private final Context context;
    private boolean debugging;
    private Downloader downloader;
    private  listener;
    private ExecutorService service;
    private ransformer transformer;

    public Picasso build()
    {
        Context context1 = context;
        if (downloader == null)
        {
            downloader = Utils.createDefaultDownloader(context1);
        }
        if (cache == null)
        {
            cache = new LruCache(context1);
        }
        if (service == null)
        {
            service = new PicassoExecutorService();
        }
        if (transformer == null)
        {
            transformer = ransformer.IDENTITY;
        }
        Stats stats = new Stats(cache);
        return new Picasso(context1, new Dispatcher(context1, service, Picasso.HANDLER, downloader, cache, stats), cache, listener, transformer, stats, debugging);
    }

    public debugging debugging(boolean flag)
    {
        debugging = flag;
        return this;
    }

    public debugging downloader(Downloader downloader1)
    {
        if (downloader1 == null)
        {
            throw new IllegalArgumentException("Downloader must not be null.");
        }
        if (downloader != null)
        {
            throw new IllegalStateException("Downloader already set.");
        } else
        {
            downloader = downloader1;
            return this;
        }
    }

    public downloader executor(ExecutorService executorservice)
    {
        if (executorservice == null)
        {
            throw new IllegalArgumentException("Executor service must not be null.");
        }
        if (service != null)
        {
            throw new IllegalStateException("Executor service already set.");
        } else
        {
            service = executorservice;
            return this;
        }
    }

    public  listener( )
    {
        if ( == null)
        {
            throw new IllegalArgumentException("Listener must not be null.");
        }
        if (listener != null)
        {
            throw new IllegalStateException("Listener already set.");
        } else
        {
            listener = ;
            return this;
        }
    }

    public listener memoryCache(Cache cache1)
    {
        if (cache1 == null)
        {
            throw new IllegalArgumentException("Memory cache must not be null.");
        }
        if (cache != null)
        {
            throw new IllegalStateException("Memory cache already set.");
        } else
        {
            cache = cache1;
            return this;
        }
    }

    public ransformer requestTransformer(ransformer ransformer)
    {
        if (ransformer == null)
        {
            throw new IllegalArgumentException("Transformer must not be null.");
        }
        if (transformer != null)
        {
            throw new IllegalStateException("Transformer already set.");
        } else
        {
            transformer = ransformer;
            return this;
        }
    }

    public ransformer(Context context1)
    {
        if (context1 == null)
        {
            throw new IllegalArgumentException("Context must not be null.");
        } else
        {
            context = context1.getApplicationContext();
            return;
        }
    }
}
