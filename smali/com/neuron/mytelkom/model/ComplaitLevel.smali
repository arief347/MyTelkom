.class public Lcom/neuron/mytelkom/model/ComplaitLevel;
.super Ljava/lang/Object;
.source "ComplaitLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field level:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ComplaitLevel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ComplaitLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .parameter "level"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ComplaitLevel;->level:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ComplaitLevel;->name:Ljava/lang/String;

    .line 25
    return-void
.end method
