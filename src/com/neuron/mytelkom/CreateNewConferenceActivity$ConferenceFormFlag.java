// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;


// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceActivity

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES MODIFY;
    public static final ENUM.VALUES NEW;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        NEW = new <init>("NEW", 0);
        MODIFY = new <init>("MODIFY", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = NEW;
        avalues[1] = MODIFY;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
