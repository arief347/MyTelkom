// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.text.TextUtils;

public class CalligraphyConfig
{

    private static CalligraphyConfig mInstance;
    private final int mAttrId;
    private final String mFontPath;
    private final boolean mIsFontSet;

    private CalligraphyConfig()
    {
        this(null, -1);
    }

    private CalligraphyConfig(int i)
    {
        this(null, i);
    }

    private CalligraphyConfig(String s)
    {
        this(s, -1);
    }

    private CalligraphyConfig(String s, int i)
    {
        mFontPath = s;
        boolean flag;
        if (!TextUtils.isEmpty(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mIsFontSet = flag;
        if (i == -1)
        {
            i = -1;
        }
        mAttrId = i;
    }

    static CalligraphyConfig get()
    {
        if (mInstance == null)
        {
            mInstance = new CalligraphyConfig();
        }
        return mInstance;
    }

    public static void initDefault(int i)
    {
        mInstance = new CalligraphyConfig(i);
    }

    public static void initDefault(String s)
    {
        mInstance = new CalligraphyConfig(s);
    }

    public static void initDefault(String s, int i)
    {
        mInstance = new CalligraphyConfig(s, i);
    }

    public int getAttrId()
    {
        return mAttrId;
    }

    String getFontPath()
    {
        return mFontPath;
    }

    boolean isFontSet()
    {
        return mIsFontSet;
    }
}
