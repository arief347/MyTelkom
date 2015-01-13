// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.graphics.Bitmap;
import java.io.InputStream;

// Referenced classes of package com.squareup.picasso:
//            Downloader

public static class cached
{

    final Bitmap bitmap;
    final boolean cached;
    final InputStream stream;

    public Bitmap getBitmap()
    {
        return bitmap;
    }

    public InputStream getInputStream()
    {
        return stream;
    }

    public (Bitmap bitmap1, boolean flag)
    {
        if (bitmap1 == null)
        {
            throw new IllegalArgumentException("Bitmap may not be null.");
        } else
        {
            stream = null;
            bitmap = bitmap1;
            cached = flag;
            return;
        }
    }

    public cached(InputStream inputstream, boolean flag)
    {
        if (inputstream == null)
        {
            throw new IllegalArgumentException("Stream may not be null.");
        } else
        {
            stream = inputstream;
            bitmap = null;
            cached = flag;
            return;
        }
    }
}
