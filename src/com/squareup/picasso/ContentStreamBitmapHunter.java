// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;

// Referenced classes of package com.squareup.picasso:
//            BitmapHunter, Request, Utils, Picasso, 
//            Dispatcher, Cache, Stats, Action

class ContentStreamBitmapHunter extends BitmapHunter
{

    final Context context;

    ContentStreamBitmapHunter(Context context1, Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action)
    {
        super(picasso, dispatcher, cache, stats, action);
        context = context1;
    }

    Bitmap decode(Request request)
        throws IOException
    {
        return decodeContentStream(request);
    }

    protected Bitmap decodeContentStream(Request request)
        throws IOException
    {
        ContentResolver contentresolver;
        android.graphics.BitmapFactory.Options options;
        java.io.InputStream inputstream1;
        contentresolver = context.getContentResolver();
        options = createBitmapOptions(request);
        if (!request.hasSize())
        {
            break MISSING_BLOCK_LABEL_63;
        }
        options.inJustDecodeBounds = true;
        inputstream1 = null;
        inputstream1 = contentresolver.openInputStream(request.uri);
        BitmapFactory.decodeStream(inputstream1, null, options);
        Utils.closeQuietly(inputstream1);
        calculateInSampleSize(request.targetWidth, request.targetHeight, options);
        java.io.InputStream inputstream = contentresolver.openInputStream(request.uri);
        Bitmap bitmap = BitmapFactory.decodeStream(inputstream, null, options);
        Utils.closeQuietly(inputstream);
        return bitmap;
        Exception exception1;
        exception1;
        Utils.closeQuietly(inputstream1);
        throw exception1;
        Exception exception;
        exception;
        Utils.closeQuietly(inputstream);
        throw exception;
    }

    Picasso.LoadedFrom getLoadedFrom()
    {
        return Picasso.LoadedFrom.DISK;
    }
}
