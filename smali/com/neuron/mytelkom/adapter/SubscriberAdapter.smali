.class public Lcom/neuron/mytelkom/adapter/SubscriberAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubscriberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private listUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/Subscriber;",
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
            "Lcom/neuron/mytelkom/model/Subscriber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, listUser:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->activity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->listUser:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 47
    move-object v3, p2

    .line 48
    .local v3, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 50
    .local v0, holder:Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;
    if-nez v3, :cond_0

    .line 51
    new-instance v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;-><init>()V

    .line 52
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 53
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03003c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 54
    const v4, 0x7f0a00f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 55
    const v4, 0x7f0a00f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;->txtRole:Landroid/widget/TextView;

    .line 56
    const v4, 0x7f0a00f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;->txtStatus:Landroid/widget/TextView;

    .line 57
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Subscriber;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Subscriber;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;->txtRole:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Subscriber;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Subscriber;->getConferenceRole()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const-string v2, ""

    .line 67
    .local v2, status:Ljava/lang/String;
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Subscriber;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Subscriber;->getIsSpeaking()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string v2, "Speaking"

    .line 75
    :goto_1
    iget-object v4, v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;->txtStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object v3

    .line 59
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/SubscriberAdapter$ViewHolder;
    goto :goto_0

    .line 69
    .restart local v2       #status:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/Subscriber;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Subscriber;->getIsMute()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    const-string v2, "Mute"

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v2, "-"

    goto :goto_1
.end method
