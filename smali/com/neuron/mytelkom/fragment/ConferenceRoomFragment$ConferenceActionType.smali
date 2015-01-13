.class public final enum Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;
.super Ljava/lang/Enum;
.source "ConferenceRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConferenceActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

.field public static final enum EDIT:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

.field private static final synthetic ENUM$VALUES:[Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

.field public static final enum STOP:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->EDIT:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    new-instance v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->CANCEL:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    new-instance v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->STOP:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    sget-object v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->EDIT:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->CANCEL:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->STOP:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->ENUM$VALUES:[Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    return-object v0
.end method

.method public static values()[Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->ENUM$VALUES:[Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
