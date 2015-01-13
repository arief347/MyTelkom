.class public final enum Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;
.super Ljava/lang/Enum;
.source "SubscriberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/SubscriberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriberAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

.field public static final enum KICK:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

.field public static final enum MIC_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

.field public static final enum MIC_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

.field public static final enum SPEAKER_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

.field public static final enum SPEAKER_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    const-string v1, "MIC_ON"

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->MIC_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    new-instance v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    const-string v1, "MIC_OFF"

    invoke-direct {v0, v1, v3}, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->MIC_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    new-instance v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    const-string v1, "SPEAKER_ON"

    invoke-direct {v0, v1, v4}, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->SPEAKER_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    new-instance v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    const-string v1, "SPEAKER_OFF"

    invoke-direct {v0, v1, v5}, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->SPEAKER_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    .line 49
    new-instance v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    const-string v1, "KICK"

    invoke-direct {v0, v1, v6}, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->KICK:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->MIC_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->MIC_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->SPEAKER_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->SPEAKER_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->KICK:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->ENUM$VALUES:[Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    return-object v0
.end method

.method public static values()[Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->ENUM$VALUES:[Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
