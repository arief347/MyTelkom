// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;


// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceRoomFragment

public static final class  extends Enum
{

    public static final ENUM.VALUES CANCEL;
    public static final ENUM.VALUES EDIT;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES STOP;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType, s);
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
        EDIT = new <init>("EDIT", 0);
        CANCEL = new <init>("CANCEL", 1);
        STOP = new <init>("STOP", 2);
        ENUM.VALUES avalues[] = new <init>[3];
        avalues[0] = EDIT;
        avalues[1] = CANCEL;
        avalues[2] = STOP;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
