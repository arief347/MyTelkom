// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class CalligraphyTypefaceSpan extends MetricAffectingSpan
{

    private final Typeface typeface;

    public CalligraphyTypefaceSpan(Typeface typeface1)
    {
        typeface = typeface1;
    }

    private void apply(Paint paint)
    {
        Typeface typeface1 = paint.getTypeface();
        int i;
        int j;
        if (typeface1 != null)
        {
            i = typeface1.getStyle();
        } else
        {
            i = 0;
        }
        j = i & (-1 ^ typeface.getStyle());
        if ((j & 1) != 0)
        {
            paint.setFakeBoldText(true);
        }
        if ((j & 2) != 0)
        {
            paint.setTextSkewX(-0.25F);
        }
        paint.setTypeface(typeface);
    }

    public void updateDrawState(TextPaint textpaint)
    {
        apply(textpaint);
    }

    public void updateMeasureState(TextPaint textpaint)
    {
        apply(textpaint);
    }
}
