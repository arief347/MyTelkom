.class public Lcom/neuron/mytelkom/model/ConferenceKey;
.super Ljava/lang/Object;
.source "ConferenceKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xadcb78c0bc74974L


# instance fields
.field conferenceId:Ljava/lang/String;

.field subConferenceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConferenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceKey;->conferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubConferenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceKey;->subConferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public setConferenceId(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceId"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceKey;->conferenceId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setSubConferenceId(Ljava/lang/String;)V
    .locals 0
    .parameter "subConferenceId"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceKey;->subConferenceId:Ljava/lang/String;

    .line 26
    return-void
.end method
