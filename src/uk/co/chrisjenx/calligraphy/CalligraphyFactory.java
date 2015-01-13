// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package uk.co.chrisjenx.calligraphy;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package uk.co.chrisjenx.calligraphy:
//            CalligraphyUtils, CalligraphyConfig

class CalligraphyFactory
    implements android.view.LayoutInflater.Factory
{

    private static final String ACTION_BAR_SUBTITLE = "action_bar_subtitle";
    private static final String ACTION_BAR_TITLE = "action_bar_title";
    private static final String sClassPrefixList[] = {
        "android.widget.", "android.webkit."
    };
    private static final Map sStyles = new HashMap() {

            
            {
                put(android/widget/TextView, Integer.valueOf(0x1010084));
                put(android/widget/Button, Integer.valueOf(0x1010048));
                put(android/widget/EditText, Integer.valueOf(0x101006e));
                put(android/widget/AutoCompleteTextView, Integer.valueOf(0x101006b));
                put(android/widget/MultiAutoCompleteTextView, Integer.valueOf(0x101006b));
                put(android/widget/CheckBox, Integer.valueOf(0x101006c));
                put(android/widget/RadioButton, Integer.valueOf(0x101007e));
                put(android/widget/ToggleButton, Integer.valueOf(0x101004b));
            }
    };
    private final android.view.LayoutInflater.Factory factory;
    private final int mAttributeId;

    public CalligraphyFactory(android.view.LayoutInflater.Factory factory1, int i)
    {
        factory = factory1;
        mAttributeId = i;
    }

    protected static int[] getStyleForTextView(View view)
    {
        int ai[] = {
            -1, -1
        };
        if (matchesResourceIdName(view, "action_bar_title"))
        {
            ai[0] = 0x10102ce;
            ai[1] = 0x10102f8;
        } else
        if (matchesResourceIdName(view, "action_bar_subtitle"))
        {
            ai[0] = 0x10102ce;
            ai[1] = 0x10102f9;
        }
        if (ai[0] == -1)
        {
            int i;
            if (sStyles.containsKey(view.getClass()))
            {
                i = ((Integer)sStyles.get(view.getClass())).intValue();
            } else
            {
                i = 0x1010034;
            }
            ai[0] = i;
        }
        return ai;
    }

    protected static boolean matchesResourceIdName(View view, String s)
    {
        if (view.getId() == -1)
        {
            return false;
        } else
        {
            return view.getResources().getResourceEntryName(view.getId()).equalsIgnoreCase(s);
        }
    }

    protected View createViewOrFailQuietly(String s, Context context, AttributeSet attributeset)
    {
        if (!s.contains(".")) goto _L2; else goto _L1
_L1:
        View view = createViewOrFailQuietly(s, null, context, attributeset);
_L4:
        return view;
_L2:
        String as[] = sClassPrefixList;
        int i = as.length;
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                view = createViewOrFailQuietly(s, as[j], context, attributeset);
                if (view != null)
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    protected View createViewOrFailQuietly(String s, String s1, Context context, AttributeSet attributeset)
    {
        View view;
        try
        {
            view = LayoutInflater.from(context).createView(s, s1, attributeset);
        }
        catch (Exception exception)
        {
            return null;
        }
        return view;
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        boolean flag = context instanceof android.view.LayoutInflater.Factory;
        View view = null;
        if (flag)
        {
            view = ((android.view.LayoutInflater.Factory)context).onCreateView(s, context, attributeset);
        }
        if (factory != null && view == null)
        {
            view = factory.onCreateView(s, context, attributeset);
        }
        if (view == null)
        {
            view = createViewOrFailQuietly(s, context, attributeset);
        }
        if (view != null)
        {
            onViewCreated(view, s, context, attributeset);
        }
        return view;
    }

    protected void onViewCreated(View view, String s, Context context, AttributeSet attributeset)
    {
label0:
        {
label1:
            {
                if (!(view instanceof TextView))
                {
                    break label0;
                }
                String s1 = CalligraphyUtils.pullFontPathFromView(context, attributeset, mAttributeId);
                if (TextUtils.isEmpty(s1))
                {
                    s1 = CalligraphyUtils.pullFontPathFromStyle(context, attributeset, mAttributeId);
                }
                if (TextUtils.isEmpty(s1))
                {
                    s1 = CalligraphyUtils.pullFontPathFromTextAppearance(context, attributeset, mAttributeId);
                }
                if (TextUtils.isEmpty(s1))
                {
                    int ai[] = getStyleForTextView(view);
                    boolean flag;
                    boolean flag1;
                    if (ai[1] != -1)
                    {
                        s1 = CalligraphyUtils.pullFontPathFromTheme(context, ai[0], ai[1], mAttributeId);
                    } else
                    {
                        s1 = CalligraphyUtils.pullFontPathFromTheme(context, ai[0], mAttributeId);
                    }
                }
                if (!matchesResourceIdName(view, "action_bar_title"))
                {
                    flag1 = matchesResourceIdName(view, "action_bar_subtitle");
                    flag = false;
                    if (!flag1)
                    {
                        break label1;
                    }
                }
                flag = true;
            }
            CalligraphyUtils.applyFontToTextView(context, (TextView)view, CalligraphyConfig.get(), s1, flag);
        }
    }

}
