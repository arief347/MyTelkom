.class public Lcom/neuron/mytelkom/model/MyTicketItem;
.super Ljava/lang/Object;
.source "MyTicketItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7b8d40e421a450ffL


# instance fields
.field date:Ljava/lang/String;

.field no:Ljava/lang/String;

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
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/neuron/mytelkom/model/MyTicketItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/neuron/mytelkom/model/MyTicketItem;->no:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/model/MyTicketItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/neuron/mytelkom/model/MyTicketItem;->date:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setNo(Ljava/lang/String;)V
    .locals 0
    .parameter "no"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/neuron/mytelkom/model/MyTicketItem;->no:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/neuron/mytelkom/model/MyTicketItem;->status:Ljava/lang/String;

    .line 35
    return-void
.end method
