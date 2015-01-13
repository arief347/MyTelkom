// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.Log;
import java.util.HashMap;

// Referenced classes of package uk.co.chrisjenx.calligraphy:
//            CalligraphyTypefaceSpan

public final class TypefaceUtils
{

    private static final HashMap sCachedFonts = new HashMap();
    private static final HashMap sCachedSpans = new HashMap();

    private TypefaceUtils()
    {
    }

    public static CalligraphyTypefaceSpan getSpan(Typeface typeface)
    {
        if (typeface == null)
        {
            return null;
        }
        CalligraphyTypefaceSpan calligraphytypefacespan;
        synchronized (sCachedSpans)
        {
            if (sCachedSpans.containsKey(typeface))
            {
                break MISSING_BLOCK_LABEL_49;
            }
            calligraphytypefacespan = new CalligraphyTypefaceSpan(typeface);
            sCachedSpans.put(typeface, calligraphytypefacespan);
        }
        return calligraphytypefacespan;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        CalligraphyTypefaceSpan calligraphytypefacespan1 = (CalligraphyTypefaceSpan)sCachedSpans.get(typeface);
        hashmap;
        JVM INSTR monitorexit ;
        return calligraphytypefacespan1;
    }

    public static Typeface load(AssetManager assetmanager, String s)
    {
        hashmap;
        JVM INSTR monitorenter ;
        Typeface typeface1;
        synchronized (sCachedFonts)
        {
            if (sCachedFonts.containsKey(s))
            {
                break MISSING_BLOCK_LABEL_85;
            }
            typeface1 = Typeface.createFromAsset(assetmanager, s);
            sCachedFonts.put(s, typeface1);
        }
        return typeface1;
        Exception exception1;
        exception1;
        Log.w("Calligraphy", (new StringBuilder()).append("Can't create asset from ").append(s).append(". Make sure you have passed in the correct path and file name.").toString(), exception1);
        sCachedFonts.put(s, null);
        hashmap;
        JVM INSTR monitorexit ;
        return null;
        Typeface typeface = (Typeface)sCachedFonts.get(s);
        hashmap;
        JVM INSTR monitorexit ;
        return typeface;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
