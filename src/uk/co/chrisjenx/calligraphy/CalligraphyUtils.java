// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;

// Referenced classes of package uk.co.chrisjenx.calligraphy:
//            CalligraphyConfig, TypefaceUtils

public final class CalligraphyUtils
{

    private CalligraphyUtils()
    {
    }

    static void applyFontToTextView(Context context, TextView textview, CalligraphyConfig calligraphyconfig)
    {
        applyFontToTextView(context, textview, calligraphyconfig, false);
    }

    public static void applyFontToTextView(Context context, TextView textview, CalligraphyConfig calligraphyconfig, String s)
    {
        applyFontToTextView(context, textview, calligraphyconfig, s, false);
    }

    static void applyFontToTextView(Context context, TextView textview, CalligraphyConfig calligraphyconfig, String s, boolean flag)
    {
        while (context == null || textview == null || calligraphyconfig == null || !TextUtils.isEmpty(s) && applyFontToTextView(context, textview, s, flag)) 
        {
            return;
        }
        applyFontToTextView(context, textview, calligraphyconfig, flag);
    }

    static void applyFontToTextView(Context context, TextView textview, CalligraphyConfig calligraphyconfig, boolean flag)
    {
        while (context == null || textview == null || calligraphyconfig == null || !calligraphyconfig.isFontSet()) 
        {
            return;
        }
        applyFontToTextView(context, textview, calligraphyconfig.getFontPath(), flag);
    }

    public static boolean applyFontToTextView(Context context, TextView textview, String s)
    {
        return applyFontToTextView(context, textview, s, false);
    }

    static boolean applyFontToTextView(Context context, TextView textview, String s, boolean flag)
    {
        if (textview == null || context == null)
        {
            return false;
        } else
        {
            return applyFontToTextView(textview, TypefaceUtils.load(context.getAssets(), s), flag);
        }
    }

    public static boolean applyFontToTextView(TextView textview, Typeface typeface)
    {
        return applyFontToTextView(textview, typeface, false);
    }

    public static boolean applyFontToTextView(TextView textview, Typeface typeface, boolean flag)
    {
        if (textview == null || typeface == null)
        {
            return false;
        }
        textview.setPaintFlags(1 | (0x80 | textview.getPaintFlags()));
        textview.setTypeface(typeface);
        if (flag)
        {
            textview.setText(applyTypefaceSpan(textview.getText(), typeface), android.widget.TextView.BufferType.SPANNABLE);
            textview.addTextChangedListener(new TextWatcher(typeface) {

                final Typeface val$typeface;

                public void afterTextChanged(Editable editable)
                {
                    CalligraphyUtils.applyTypefaceSpan(editable, typeface);
                }

                public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

                public void onTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

            
            {
                typeface = typeface1;
                super();
            }
            });
        }
        return true;
    }

    public static CharSequence applyTypefaceSpan(CharSequence charsequence, Typeface typeface)
    {
        if (charsequence != null && charsequence.length() > 0)
        {
            if (!(charsequence instanceof Spannable))
            {
                charsequence = new SpannableString(charsequence);
            }
            ((Spannable)charsequence).setSpan(TypefaceUtils.getSpan(typeface), 0, charsequence.length(), 33);
        }
        return charsequence;
    }

    static String pullFontPathFromStyle(Context context, AttributeSet attributeset, int i)
    {
        TypedArray typedarray;
        if (i == -1)
        {
            return null;
        }
        typedarray = context.obtainStyledAttributes(attributeset, new int[] {
            i
        });
        if (typedarray == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        String s;
        boolean flag;
        s = typedarray.getString(0);
        flag = TextUtils.isEmpty(s);
        if (!flag)
        {
            typedarray.recycle();
            return s;
        }
        typedarray.recycle();
_L2:
        return null;
        Exception exception1;
        exception1;
        typedarray.recycle();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        typedarray.recycle();
        throw exception;
    }

    static String pullFontPathFromTextAppearance(Context context, AttributeSet attributeset, int i)
    {
        if (i != -1) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        TypedArray typedarray1;
        int j = -1;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, new int[] {
            0x1010034
        });
        if (typedarray != null)
        {
            String s;
            int k;
            try
            {
                k = typedarray.getResourceId(0, -1);
            }
            catch (Exception exception3)
            {
                typedarray.recycle();
                return null;
            }
            finally
            {
                typedarray.recycle();
            }
            j = k;
            typedarray.recycle();
        }
        typedarray1 = context.obtainStyledAttributes(j, new int[] {
            i
        });
        if (typedarray1 == null) goto _L1; else goto _L3
_L3:
        Exception exception;
        Exception exception2;
        try
        {
            s = typedarray1.getString(0);
        }
        catch (Exception exception1)
        {
            typedarray1.recycle();
            return null;
        }
        finally
        {
            typedarray1.recycle();
        }
        typedarray1.recycle();
        return s;
        throw exception2;
        throw exception;
    }

    static String pullFontPathFromTheme(Context context, int i, int j)
    {
        Exception exception;
        if (i == -1 || j == -1)
        {
            return null;
        }
        android.content.res.Resources.Theme theme = context.getTheme();
        TypedValue typedvalue = new TypedValue();
        theme.resolveAttribute(i, typedvalue, true);
        TypedArray typedarray = theme.obtainStyledAttributes(typedvalue.resourceId, new int[] {
            j
        });
        String s;
        try
        {
            s = typedarray.getString(0);
        }
        catch (Exception exception1)
        {
            typedarray.recycle();
            return null;
        }
        finally
        {
            typedarray.recycle();
        }
        typedarray.recycle();
        return s;
        throw exception;
    }

    static String pullFontPathFromTheme(Context context, int i, int j, int k)
    {
        if (i != -1 && k != -1) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        TypedArray typedarray1;
        android.content.res.Resources.Theme theme = context.getTheme();
        TypedValue typedvalue = new TypedValue();
        theme.resolveAttribute(i, typedvalue, true);
        TypedArray typedarray = theme.obtainStyledAttributes(typedvalue.resourceId, new int[] {
            j
        });
        int l;
        String s;
        try
        {
            l = typedarray.getResourceId(0, -1);
        }
        catch (Exception exception1)
        {
            typedarray.recycle();
            return null;
        }
        finally
        {
            typedarray.recycle();
        }
        typedarray.recycle();
        if (l == -1) goto _L1; else goto _L3
_L3:
        typedarray1 = context.obtainStyledAttributes(l, new int[] {
            k
        });
        if (typedarray1 == null) goto _L1; else goto _L4
_L4:
        Exception exception2;
        Exception exception;
        try
        {
            s = typedarray1.getString(0);
        }
        catch (Exception exception3)
        {
            typedarray1.recycle();
            return null;
        }
        finally
        {
            typedarray1.recycle();
        }
        typedarray1.recycle();
        return s;
        throw exception;
        throw exception2;
    }

    static String pullFontPathFromView(Context context, AttributeSet attributeset, int i)
    {
        if (i == -1)
        {
            return null;
        }
        String s;
        int j;
        try
        {
            s = context.getResources().getResourceEntryName(i);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            return null;
        }
        j = attributeset.getAttributeResourceValue(null, s, -1);
        if (j > 0)
        {
            return context.getString(j);
        } else
        {
            return attributeset.getAttributeValue(null, s);
        }
    }
}
