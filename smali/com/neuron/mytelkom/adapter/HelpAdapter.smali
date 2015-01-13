.class public Lcom/neuron/mytelkom/adapter/HelpAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field listHelp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/HelpItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/HelpItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, listHelp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/HelpAdapter;->activity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/HelpAdapter;->listHelp:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/HelpAdapter;->listHelp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, holder:Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;
    move-object v2, p2

    .line 51
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 52
    new-instance v0, Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;-><init>()V

    .line 53
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/HelpAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 54
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030037

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    const v3, 0x7f0a00e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v0, Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/HelpAdapter;->listHelp:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neuron/mytelkom/model/HelpItem;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/HelpItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v2

    .line 58
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/HelpAdapter$ViewHolder;
    goto :goto_0
.end method
