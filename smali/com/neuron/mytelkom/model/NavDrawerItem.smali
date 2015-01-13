.class public Lcom/neuron/mytelkom/model/NavDrawerItem;
.super Ljava/lang/Object;
.source "NavDrawerItem.java"


# instance fields
.field private count:Ljava/lang/String;

.field private icon:I

.field private isCounterVisible:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->count:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->isCounterVisible:Z

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->count:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->isCounterVisible:Z

    .line 14
    iput-object p1, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->title:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->icon:I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "icon"
    .parameter "isCounterVisible"
    .parameter "count"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->count:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->isCounterVisible:Z

    .line 19
    iput-object p1, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->title:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->icon:I

    .line 21
    iput-boolean p3, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->isCounterVisible:Z

    .line 22
    iput-object p4, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->count:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getCounterVisibility()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->isCounterVisible:Z

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->count:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCounterVisibility(Z)V
    .locals 0
    .parameter "isCounterVisible"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->isCounterVisible:Z

    .line 55
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 46
    iput p1, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->icon:I

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/neuron/mytelkom/model/NavDrawerItem;->title:Ljava/lang/String;

    .line 43
    return-void
.end method
