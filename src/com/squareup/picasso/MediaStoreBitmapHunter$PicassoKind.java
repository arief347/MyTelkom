// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.picasso;


// Referenced classes of package com.squareup.picasso:
//            MediaStoreBitmapHunter

static final class height extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FULL;
    public static final .VALUES MICRO;
    public static final .VALUES MINI;
    final int androidKind;
    final int height;
    final int width;

    public static height valueOf(String s)
    {
        return (height)Enum.valueOf(com/squareup/picasso/MediaStoreBitmapHunter$PicassoKind, s);
    }

    public static height[] values()
    {
        return (height[])$VALUES.clone();
    }

    static 
    {
        MICRO = new <init>("MICRO", 0, 3, 96, 96);
        MINI = new <init>("MINI", 1, 1, 512, 384);
        FULL = new <init>("FULL", 2, 2, -1, -1);
        d_3B_.clone aclone[] = new <init>[3];
        aclone[0] = MICRO;
        aclone[1] = MINI;
        aclone[2] = FULL;
        $VALUES = aclone;
    }

    private (String s, int i, int j, int k, int l)
    {
        super(s, i);
        androidKind = j;
        width = k;
        height = l;
    }
}
