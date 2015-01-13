// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.squareup.picasso:
//            UrlConnectionDownloader, Request, Transformation, Downloader, 
//            OkHttpDownloader

final class Utils
{
    private static class ActivityManagerHoneycomb
    {

        static int getLargeMemoryClass(ActivityManager activitymanager)
        {
            return activitymanager.getLargeMemoryClass();
        }

        private ActivityManagerHoneycomb()
        {
        }
    }

    private static class BitmapHoneycombMR1
    {

        static int getByteCount(Bitmap bitmap)
        {
            return bitmap.getByteCount();
        }

        private BitmapHoneycombMR1()
        {
        }
    }

    private static class OkHttpLoaderCreator
    {

        static Downloader create(Context context)
        {
            return new OkHttpDownloader(context);
        }

        private OkHttpLoaderCreator()
        {
        }
    }

    private static class PicassoThread extends Thread
    {

        public void run()
        {
            Process.setThreadPriority(10);
            super.run();
        }

        public PicassoThread(Runnable runnable)
        {
            super(runnable);
        }
    }

    static class PicassoThreadFactory
        implements ThreadFactory
    {

        public Thread newThread(Runnable runnable)
        {
            return new PicassoThread(runnable);
        }

        PicassoThreadFactory()
        {
        }
    }


    static final int DEFAULT_CONNECT_TIMEOUT = 15000;
    static final int DEFAULT_READ_TIMEOUT = 20000;
    private static final int KEY_PADDING = 50;
    static final StringBuilder MAIN_THREAD_KEY_BUILDER = new StringBuilder();
    private static final int MAX_DISK_CACHE_SIZE = 0x3200000;
    private static final int MIN_DISK_CACHE_SIZE = 0x500000;
    private static final String PICASSO_CACHE = "picasso-cache";
    static final String THREAD_IDLE_NAME = "Picasso-Idle";
    static final String THREAD_PREFIX = "Picasso-";
    private static final String WEBP_FILE_HEADER_RIFF = "RIFF";
    private static final int WEBP_FILE_HEADER_SIZE = 12;
    private static final String WEBP_FILE_HEADER_WEBP = "WEBP";

    private Utils()
    {
    }

    static long calculateDiskCacheSize(File file)
    {
        long l = 0x500000L;
        try
        {
            StatFs statfs = new StatFs(file.getAbsolutePath());
            l = ((long)statfs.getBlockCount() * (long)statfs.getBlockSize()) / 50L;
        }
        catch (IllegalArgumentException illegalargumentexception) { }
        return Math.max(Math.min(l, 0x3200000L), 0x500000L);
    }

    static int calculateMemoryCacheSize(Context context)
    {
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        boolean flag;
        int i;
        if ((0x100000 & context.getApplicationInfo().flags) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = activitymanager.getMemoryClass();
        if (flag && android.os.Build.VERSION.SDK_INT >= 11)
        {
            i = ActivityManagerHoneycomb.getLargeMemoryClass(activitymanager);
        }
        return (0x100000 * i) / 7;
    }

    static void checkNotMain()
    {
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        } else
        {
            return;
        }
    }

    static void closeQuietly(InputStream inputstream)
    {
        if (inputstream == null)
        {
            return;
        }
        try
        {
            inputstream.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    static File createDefaultCacheDir(Context context)
    {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists())
        {
            file.mkdirs();
        }
        return file;
    }

    static Downloader createDefaultDownloader(Context context)
    {
        Downloader downloader;
        try
        {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            downloader = OkHttpLoaderCreator.create(context);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return new UrlConnectionDownloader(context);
        }
        return downloader;
    }

    static String createKey(Request request)
    {
        String s = createKey(request, MAIN_THREAD_KEY_BUILDER);
        MAIN_THREAD_KEY_BUILDER.setLength(0);
        return s;
    }

    static String createKey(Request request, StringBuilder stringbuilder)
    {
        int i;
        int j;
        if (request.uri != null)
        {
            String s = request.uri.toString();
            stringbuilder.ensureCapacity(50 + s.length());
            stringbuilder.append(s);
        } else
        {
            stringbuilder.ensureCapacity(50);
            stringbuilder.append(request.resourceId);
        }
        stringbuilder.append('\n');
        if (request.rotationDegrees != 0.0F)
        {
            stringbuilder.append("rotation:").append(request.rotationDegrees);
            if (request.hasRotationPivot)
            {
                stringbuilder.append('@').append(request.rotationPivotX).append('x').append(request.rotationPivotY);
            }
            stringbuilder.append('\n');
        }
        if (request.targetWidth != 0)
        {
            stringbuilder.append("resize:").append(request.targetWidth).append('x').append(request.targetHeight);
            stringbuilder.append('\n');
        }
        if (!request.centerCrop) goto _L2; else goto _L1
_L1:
        stringbuilder.append("centerCrop\n");
_L4:
        if (request.transformations != null)
        {
            i = 0;
            for (j = request.transformations.size(); i < j; i++)
            {
                stringbuilder.append(((Transformation)request.transformations.get(i)).key());
                stringbuilder.append('\n');
            }

        }
        break; /* Loop/switch isn't completed */
_L2:
        if (request.centerInside)
        {
            stringbuilder.append("centerInside\n");
        }
        if (true) goto _L4; else goto _L3
_L3:
        return stringbuilder.toString();
    }

    static int getBitmapBytes(Bitmap bitmap)
    {
        int i;
        if (android.os.Build.VERSION.SDK_INT >= 12)
        {
            i = BitmapHoneycombMR1.getByteCount(bitmap);
        } else
        {
            i = bitmap.getRowBytes() * bitmap.getHeight();
        }
        if (i < 0)
        {
            throw new IllegalStateException((new StringBuilder()).append("Negative size: ").append(bitmap).toString());
        } else
        {
            return i;
        }
    }

    static int getResourceId(Resources resources, Request request)
        throws FileNotFoundException
    {
        if (request.resourceId != 0 || request.uri == null)
        {
            return request.resourceId;
        }
        String s = request.uri.getAuthority();
        if (s == null)
        {
            throw new FileNotFoundException((new StringBuilder()).append("No package provided: ").append(request.uri).toString());
        }
        List list = request.uri.getPathSegments();
        if (list == null || list.isEmpty())
        {
            throw new FileNotFoundException((new StringBuilder()).append("No path segments: ").append(request.uri).toString());
        }
        if (list.size() == 1)
        {
            int i;
            try
            {
                i = Integer.parseInt((String)list.get(0));
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new FileNotFoundException((new StringBuilder()).append("Last path segment is not a resource ID: ").append(request.uri).toString());
            }
            return i;
        }
        if (list.size() == 2)
        {
            String s1 = (String)list.get(0);
            return resources.getIdentifier((String)list.get(1), s1, s);
        } else
        {
            throw new FileNotFoundException((new StringBuilder()).append("More than two path segments: ").append(request.uri).toString());
        }
    }

    static Resources getResources(Context context, Request request)
        throws FileNotFoundException
    {
        if (request.resourceId != 0 || request.uri == null)
        {
            return context.getResources();
        }
        String s = request.uri.getAuthority();
        if (s == null)
        {
            throw new FileNotFoundException((new StringBuilder()).append("No package provided: ").append(request.uri).toString());
        }
        Resources resources;
        try
        {
            resources = context.getPackageManager().getResourcesForApplication(s);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new FileNotFoundException((new StringBuilder()).append("Unable to obtain resources for package: ").append(request.uri).toString());
        }
        return resources;
    }

    static boolean hasPermission(Context context, String s)
    {
        return context.checkCallingOrSelfPermission(s) == 0;
    }

    static boolean isAirplaneModeOn(Context context)
    {
        int i = android.provider.Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0);
        boolean flag = false;
        if (i != 0)
        {
            flag = true;
        }
        return flag;
    }

    static boolean isWebPFile(InputStream inputstream)
        throws IOException
    {
label0:
        {
            byte abyte0[] = new byte[12];
            int i = inputstream.read(abyte0, 0, 12);
            boolean flag = false;
            if (i == 12)
            {
                if (!"RIFF".equals(new String(abyte0, 0, 4, "US-ASCII")) || !"WEBP".equals(new String(abyte0, 8, 4, "US-ASCII")))
                {
                    break label0;
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    static boolean parseResponseSourceHeader(String s)
    {
        boolean flag = true;
        if (s != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        String as[];
        as = s.split(" ", 2);
        if ("CACHE".equals(as[0]))
        {
            return flag;
        }
        if (as.length == flag) goto _L1; else goto _L3
_L3:
        if (!"CONDITIONAL_CACHE".equals(as[0])) goto _L5; else goto _L4
_L4:
        int i = Integer.parseInt(as[1]);
        if (i != 304) goto _L5; else goto _L6
_L6:
        return flag;
_L5:
        flag = false;
        if (true) goto _L6; else goto _L7
_L7:
        NumberFormatException numberformatexception;
        numberformatexception;
        return false;
    }

    static byte[] toByteArray(InputStream inputstream)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[4096];
        do
        {
            int i = inputstream.read(abyte0);
            if (-1 != i)
            {
                bytearrayoutputstream.write(abyte0, 0, i);
            } else
            {
                return bytearrayoutputstream.toByteArray();
            }
        } while (true);
    }

}
