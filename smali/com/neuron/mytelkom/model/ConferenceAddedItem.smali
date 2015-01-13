.class public Lcom/neuron/mytelkom/model/ConferenceAddedItem;
.super Lcom/neuron/mytelkom/model/ConferenceAttendees;
.source "ConferenceAddedItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4742b87973a75246L


# instance fields
.field email:Ljava/lang/String;

.field name:Ljava/lang/String;

.field noHp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAddedItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAddedItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoHp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAddedItem;->noHp:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAddedItem;->email:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAddedItem;->name:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setNoHp(Ljava/lang/String;)V
    .locals 0
    .parameter "noHp"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAddedItem;->noHp:Ljava/lang/String;

    .line 36
    return-void
.end method
