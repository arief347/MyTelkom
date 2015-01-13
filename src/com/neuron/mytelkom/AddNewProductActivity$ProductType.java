// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;


// Referenced classes of package com.neuron.mytelkom:
//            AddNewProductActivity

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES FLEXI;
    public static final ENUM.VALUES IME;
    public static final ENUM.VALUES PTSN;
    public static final ENUM.VALUES SPEEDY;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/neuron/mytelkom/AddNewProductActivity$ProductType, s);
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
        PTSN = new <init>("PTSN", 0);
        SPEEDY = new <init>("SPEEDY", 1);
        FLEXI = new <init>("FLEXI", 2);
        IME = new <init>("IME", 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = PTSN;
        avalues[1] = SPEEDY;
        avalues[2] = FLEXI;
        avalues[3] = IME;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
