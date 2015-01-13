.class public Lcom/neuron/mytelkom/model/TrackingTiketItem;
.super Ljava/lang/Object;
.source "TrackingTiketItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1d7366e2004e26a6L


# instance fields
.field dateTime:Ljava/lang/String;

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/neuron/mytelkom/model/TrackingTiketItem;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/neuron/mytelkom/model/TrackingTiketItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "dateTime"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/neuron/mytelkom/model/TrackingTiketItem;->dateTime:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/neuron/mytelkom/model/TrackingTiketItem;->status:Ljava/lang/String;

    .line 27
    return-void
.end method
