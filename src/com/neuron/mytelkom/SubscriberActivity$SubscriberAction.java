// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;


// Referenced classes of package com.neuron.mytelkom:
//            SubscriberActivity

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES KICK;
    public static final ENUM.VALUES MIC_OFF;
    public static final ENUM.VALUES MIC_ON;
    public static final ENUM.VALUES SPEAKER_OFF;
    public static final ENUM.VALUES SPEAKER_ON;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/neuron/mytelkom/SubscriberActivity$SubscriberAction, s);
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
        MIC_ON = new <init>("MIC_ON", 0);
        MIC_OFF = new <init>("MIC_OFF", 1);
        SPEAKER_ON = new <init>("SPEAKER_ON", 2);
        SPEAKER_OFF = new <init>("SPEAKER_OFF", 3);
        KICK = new <init>("KICK", 4);
        ENUM.VALUES avalues[] = new <init>[5];
        avalues[0] = MIC_ON;
        avalues[1] = MIC_OFF;
        avalues[2] = SPEAKER_ON;
        avalues[3] = SPEAKER_OFF;
        avalues[4] = KICK;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
