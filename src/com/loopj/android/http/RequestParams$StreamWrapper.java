// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import java.io.InputStream;

// Referenced classes of package com.loopj.android.http:
//            RequestParams

private static class contentType
{

    public String contentType;
    public InputStream inputStream;
    public String name;

    public (InputStream inputstream, String s, String s1)
    {
        inputStream = inputstream;
        name = s;
        contentType = s1;
    }
}
