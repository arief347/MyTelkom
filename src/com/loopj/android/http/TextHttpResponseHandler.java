// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.apache.http.Header;

// Referenced classes of package com.loopj.android.http:
//            AsyncHttpResponseHandler

public class TextHttpResponseHandler extends AsyncHttpResponseHandler
{

    private static final String LOG_TAG = "TextHttpResponseHandler";

    public TextHttpResponseHandler()
    {
        this("UTF-8");
    }

    public TextHttpResponseHandler(String s)
    {
        setCharset(s);
    }

    public void onFailure(int i, Header aheader[], String s, Throwable throwable)
    {
        onFailure(s, throwable);
    }

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        String s;
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        s = null;
_L1:
        try
        {
            onFailure(i, aheader, s, throwable);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.v("TextHttpResponseHandler", "String encoding failed, calling onFailure(int, Header[], String, Throwable)");
            onFailure(0, aheader, (String)null, ((Throwable) (unsupportedencodingexception)));
            return;
        }
        s = new String(abyte0, getCharset());
          goto _L1
    }

    public void onFailure(String s, Throwable throwable)
    {
    }

    public void onSuccess(int i, Header aheader[], String s)
    {
        onSuccess(i, s);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        String s;
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        s = null;
_L1:
        try
        {
            onSuccess(i, aheader, s);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.v("TextHttpResponseHandler", "String encoding failed, calling onFailure(int, Header[], String, Throwable)");
            onFailure(0, aheader, (String)null, unsupportedencodingexception);
            return;
        }
        s = new String(abyte0, getCharset());
          goto _L1
    }
}
