.class public Lcom/neuron/mytelkom/adapter/PtsnAdapter;
.super Landroid/widget/BaseAdapter;
.source "PtsnAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;
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
    .line 21
    .local p2, listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->listItem:Ljava/util/LinkedList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 48
    move-object v3, p2

    .line 49
    .local v3, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 51
    .local v0, holder:Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;
    if-nez v3, :cond_0

    .line 52
    new-instance v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;-><init>()V

    .line 53
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 54
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03003b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 55
    const v4, 0x7f0a00f0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;->txtNo:Landroid/widget/TextView;

    .line 56
    const v4, 0x7f0a00f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;->txtPeriod:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f0a00f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;->txtStatus:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;->txtNo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v5, v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;->txtPeriod:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getRegDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v2, "<font color=red>UNPAID</font>"

    .line 67
    .local v2, status:Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;->txtStatus:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object v3

    .line 60
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/PtsnAdapter$ViewHolder;
    goto :goto_0

    .line 66
    :cond_1
    const-string v2, "<font color=green>PAID</font>"

    goto :goto_1
.end method
