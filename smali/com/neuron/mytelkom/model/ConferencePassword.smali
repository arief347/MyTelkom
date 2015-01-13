.class public Lcom/neuron/mytelkom/model/ConferencePassword;
.super Ljava/lang/Object;
.source "ConferencePassword.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field autoMake:Ljava/lang/String;

.field conferenceRole:Ljava/lang/String;

.field password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoMake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferencePassword;->autoMake:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferencePassword;->conferenceRole:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferencePassword;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoMake(Ljava/lang/String;)V
    .locals 0
    .parameter "autoMake"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferencePassword;->autoMake:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setConferenceRole(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceRole"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferencePassword;->conferenceRole:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferencePassword;->password:Ljava/lang/String;

    .line 26
    return-void
.end method
