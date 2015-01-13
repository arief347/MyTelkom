.class public Lcom/neuron/mytelkom/adapter/ConferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceItem;",
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
            "Lcom/neuron/mytelkom/model/ConferenceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->listItem:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    move-object v2, p2

    .line 50
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 51
    .local v0, holder:Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 52
    new-instance v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;-><init>()V

    .line 53
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 54
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    const v3, 0x7f0a00d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;->txtItemDate:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;->txtItemName:Landroid/widget/TextView;

    .line 57
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;->txtItemName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;->txtItemDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    const-string v5, "<form color=red>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</font>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object v2

    .line 59
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/ConferenceAdapter$ViewHolder;
    goto :goto_0
.end method
