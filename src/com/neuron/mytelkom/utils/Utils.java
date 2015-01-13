// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.utils;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.neuron.mytelkom.utils:
//            Constant

public class Utils
{

    public Utils()
    {
    }

    public static String dateConversion(String s)
    {
        return (new SimpleDateFormat("yyyy-MM-dd")).format(Long.valueOf(Date.parse(s)));
    }

    public static String encodedParam(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            return null;
        }
        return s1;
    }

    public static String formatCurrency(String s)
    {
        String s1 = (new DecimalFormat("###,###.###")).format(Double.valueOf(s));
        System.out.println(s1);
        return s1;
    }

    public static String getCurrentDate()
    {
        Date date = new Date();
        return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
    }

    public static void printLog(String s)
    {
        Log.d(Constant.APP_TAG, s);
    }

    public static String replaceNull(String s)
    {
        if (s == null || s.equals(null) || s.isEmpty() || s.equals("null") || s.equals(""))
        {
            return "-";
        } else
        {
            return s;
        }
    }

    public static void showToast(Activity activity, String s)
    {
        Toast.makeText(activity, s, 1).show();
    }
}
