// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;

// Referenced classes of package uk.co.chrisjenx.calligraphy:
//            CalligraphyConfig, CalligraphyLayoutInflater

public class CalligraphyContextWrapper extends ContextWrapper
{

    private final int mAttributeId;
    private LayoutInflater mInflater;

    public CalligraphyContextWrapper(Context context)
    {
        super(context);
        mAttributeId = CalligraphyConfig.get().getAttrId();
    }

    public CalligraphyContextWrapper(Context context, int i)
    {
        super(context);
        mAttributeId = i;
    }

    public Object getSystemService(String s)
    {
        if ("layout_inflater".equals(s))
        {
            if (mInflater == null)
            {
                mInflater = new CalligraphyLayoutInflater(LayoutInflater.from(getBaseContext()), this, mAttributeId);
            }
            return mInflater;
        } else
        {
            return super.getSystemService(s);
        }
    }
}
