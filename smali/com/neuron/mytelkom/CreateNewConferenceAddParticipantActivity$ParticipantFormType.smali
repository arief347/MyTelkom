.class public final enum Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;
.super Ljava/lang/Enum;
.source "CreateNewConferenceAddParticipantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParticipantFormType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

.field public static final enum EDIT:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

.field private static final synthetic ENUM$VALUES:[Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->EDIT:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    new-instance v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->ADD:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->EDIT:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->ADD:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->ENUM$VALUES:[Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    return-object v0
.end method

.method public static values()[Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->ENUM$VALUES:[Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    array-length v1, v0

    new-array v2, v1, [Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
