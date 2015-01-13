// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;

// Referenced classes of package com.loopj.android.http:
//            SerializableCookie

public class PersistentCookieStore
    implements CookieStore
{

    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_NAME_STORE = "names";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private final SharedPreferences cookiePrefs;
    private final ConcurrentHashMap cookies = new ConcurrentHashMap();

    public PersistentCookieStore(Context context)
    {
        int i = 0;
        super();
        cookiePrefs = context.getSharedPreferences("CookiePrefsFile", 0);
        String s = cookiePrefs.getString("names", null);
        if (s != null)
        {
            String as[] = TextUtils.split(s, ",");
            for (int j = as.length; i < j; i++)
            {
                String s1 = as[i];
                String s2 = cookiePrefs.getString((new StringBuilder()).append("cookie_").append(s1).toString(), null);
                if (s2 == null)
                {
                    continue;
                }
                Cookie cookie = decodeCookie(s2);
                if (cookie != null)
                {
                    cookies.put(s1, cookie);
                }
            }

            clearExpired(new Date());
        }
    }

    public void addCookie(Cookie cookie)
    {
        String s = (new StringBuilder()).append(cookie.getName()).append(cookie.getDomain()).toString();
        android.content.SharedPreferences.Editor editor;
        if (!cookie.isExpired(new Date()))
        {
            cookies.put(s, cookie);
        } else
        {
            cookies.remove(s);
        }
        editor = cookiePrefs.edit();
        editor.putString("names", TextUtils.join(",", cookies.keySet()));
        editor.putString((new StringBuilder()).append("cookie_").append(s).toString(), encodeCookie(new SerializableCookie(cookie)));
        editor.commit();
    }

    protected String byteArrayToHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(2 * abyte0.length);
        int i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            int k = 0xff & abyte0[j];
            if (k < 16)
            {
                stringbuilder.append('0');
            }
            stringbuilder.append(Integer.toHexString(k));
        }

        return stringbuilder.toString().toUpperCase();
    }

    public void clear()
    {
        android.content.SharedPreferences.Editor editor = cookiePrefs.edit();
        String s;
        for (Iterator iterator = cookies.keySet().iterator(); iterator.hasNext(); editor.remove((new StringBuilder()).append("cookie_").append(s).toString()))
        {
            s = (String)iterator.next();
        }

        editor.remove("names");
        editor.commit();
        cookies.clear();
    }

    public boolean clearExpired(Date date)
    {
        boolean flag = false;
        android.content.SharedPreferences.Editor editor = cookiePrefs.edit();
        Iterator iterator = cookies.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (((Cookie)entry.getValue()).isExpired(date))
            {
                cookies.remove(s);
                editor.remove((new StringBuilder()).append("cookie_").append(s).toString());
                flag = true;
            }
        } while (true);
        if (flag)
        {
            editor.putString("names", TextUtils.join(",", cookies.keySet()));
        }
        editor.commit();
        return flag;
    }

    protected Cookie decodeCookie(String s)
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(hexStringToByteArray(s));
        Cookie cookie;
        try
        {
            cookie = ((SerializableCookie)(new ObjectInputStream(bytearrayinputstream)).readObject()).getCookie();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return cookie;
    }

    protected String encodeCookie(SerializableCookie serializablecookie)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            (new ObjectOutputStream(bytearrayoutputstream)).writeObject(serializablecookie);
        }
        catch (Exception exception)
        {
            return null;
        }
        return byteArrayToHexString(bytearrayoutputstream.toByteArray());
    }

    public List getCookies()
    {
        return new ArrayList(cookies.values());
    }

    protected byte[] hexStringToByteArray(String s)
    {
        int i = s.length();
        byte abyte0[] = new byte[i / 2];
        for (int j = 0; j < i; j += 2)
        {
            abyte0[j / 2] = (byte)((Character.digit(s.charAt(j), 16) << 4) + Character.digit(s.charAt(j + 1), 16));
        }

        return abyte0;
    }
}
