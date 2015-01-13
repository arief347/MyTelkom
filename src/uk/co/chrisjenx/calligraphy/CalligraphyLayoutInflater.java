// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.content.Context;
import android.view.LayoutInflater;

// Referenced classes of package uk.co.chrisjenx.calligraphy:
//            CalligraphyFactory

class CalligraphyLayoutInflater extends LayoutInflater
{

    private final int mAttributeId;

    protected CalligraphyLayoutInflater(Context context, int i)
    {
        super(context);
        mAttributeId = i;
        setUpLayoutFactory();
    }

    protected CalligraphyLayoutInflater(LayoutInflater layoutinflater, Context context, int i)
    {
        super(layoutinflater, context);
        mAttributeId = i;
        setUpLayoutFactory();
    }

    private void setUpLayoutFactory()
    {
        if (!(getFactory() instanceof CalligraphyFactory))
        {
            setFactory(new CalligraphyFactory(getFactory(), mAttributeId));
        }
    }

    public LayoutInflater cloneInContext(Context context)
    {
        return new CalligraphyLayoutInflater(this, context, mAttributeId);
    }
}
