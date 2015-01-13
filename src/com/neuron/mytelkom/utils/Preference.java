// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.utils;

import android.app.Activity;
import android.content.SharedPreferences;

public class Preference
{

    String KEY_CITY;
    String KEY_IS_LOGIN;
    String KEY_USERNAME;
    String PREFS_NAME;
    Activity activity;
    android.content.SharedPreferences.Editor editor;
    SharedPreferences preferences;

    public Preference(Activity activity1)
    {
        preferences = null;
        PREFS_NAME = "MyTelkomPrefs";
        KEY_USERNAME = "username";
        KEY_IS_LOGIN = "isLogin";
        KEY_CITY = "city";
        activity = activity1;
        preferences = activity1.getSharedPreferences(PREFS_NAME, 0);
        editor = preferences.edit();
    }

    public void clearCookies()
    {
        setUsername("");
        setIsLogin(false);
    }

    public String getCity()
    {
        return preferences.getString(KEY_CITY, "");
    }

    public Boolean getIsLogin()
    {
        return Boolean.valueOf(preferences.getBoolean(KEY_IS_LOGIN, false));
    }

    public String getUsername()
    {
        return preferences.getString(KEY_USERNAME, "");
    }

    public void setCity(String s)
    {
        editor.putString(KEY_CITY, s);
        editor.commit();
    }

    public void setIsLogin(boolean flag)
    {
        editor.putBoolean(KEY_IS_LOGIN, false);
        editor.commit();
    }

    public void setUsername(String s)
    {
        editor.putString(KEY_USERNAME, s);
        editor.commit();
    }
}
