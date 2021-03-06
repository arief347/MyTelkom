// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

public interface Downloader
{
    public static class Response
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

        public Response(Bitmap bitmap1, boolean flag)
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

        public Response(InputStream inputstream, boolean flag)
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

    public static class ResponseException extends IOException
    {

        public ResponseException(String s)
        {
            super(s);
        }
    }


    public abstract Response load(Uri uri, boolean flag)
        throws IOException;
}
