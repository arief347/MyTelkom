// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.graphics.Typeface;
import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package uk.co.chrisjenx.calligraphy:
//            CalligraphyUtils

static final class val.typeface
    implements TextWatcher
{

    final Typeface val$typeface;

    public void afterTextChanged(Editable editable)
    {
        CalligraphyUtils.applyTypefaceSpan(editable, val$typeface);
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (Typeface typeface1)
    {
        val$typeface = typeface1;
        super();
    }
}
