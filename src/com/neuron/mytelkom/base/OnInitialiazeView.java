// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.base;


public interface OnInitialiazeView
{

    public abstract void fetchResponse(String s);

    public abstract void initialiazeIntent();

    public abstract void initializeActions();

    public abstract void initializeLibs();

    public abstract void initializeRequest();

    public abstract void initializeViews();

    public abstract void setToView();
}
