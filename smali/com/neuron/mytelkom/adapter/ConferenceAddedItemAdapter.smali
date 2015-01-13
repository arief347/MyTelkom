.class public Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceAddedItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field inflater:Landroid/view/LayoutInflater;

.field private listUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceAttendees;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceAttendees;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, listUser:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceAttendees;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->listUser:Ljava/util/ArrayList;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->listUser:Ljava/util/ArrayList;

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
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 49
    move-object v1, p2

    .line 50
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 52
    .local v0, holder:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 53
    new-instance v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;-><init>()V

    .line 54
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;
    iget-object v2, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;->txtEmail:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;->txtNoHP:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v3, v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;->txtEmail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;->txtNoHP:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object v1

    .line 60
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter$ViewHolder;
    goto :goto_0
.end method
