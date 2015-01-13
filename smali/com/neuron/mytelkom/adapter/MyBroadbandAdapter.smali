.class public Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyBroadbandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field listItem:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/neuron/mytelkom/model/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/neuron/mytelkom/model/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->listItem:Ljava/util/LinkedList;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 49
    move-object v3, p2

    .line 50
    .local v3, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 52
    .local v0, holder:Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;
    if-nez v3, :cond_0

    .line 53
    new-instance v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;-><init>()V

    .line 54
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 55
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030039

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 56
    const v4, 0x7f0a00e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;->txtNo:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f0a00e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;->txtPeriod:Landroid/widget/TextView;

    .line 58
    const v4, 0x7f0a00e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;->txtStatus:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;->txtNo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v5, v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;->txtPeriod:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getRegDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const-string v2, "<font color=red>UNPAID</font>"

    .line 68
    .local v2, status:Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;->txtStatus:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object v3

    .line 61
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/MyBroadbandAdapter$ViewHolder;
    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "<font color=green>PAID</font>"

    goto :goto_1
.end method
