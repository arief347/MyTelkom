.class public Lcom/neuron/mytelkom/adapter/DashboardAdapter;
.super Landroid/widget/BaseAdapter;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/DashboardAdapter;->activity:Landroid/app/Activity;

    .line 23
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/neuron/mytelkom/adapter/DashboardAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/neuron/mytelkom/utils/Data;->dashboardIcon:[I

    array-length v0, v0

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
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 47
    move-object v1, p2

    .line 48
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 50
    .local v0, holder:Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;
    if-nez v1, :cond_0

    .line 51
    new-instance v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;-><init>()V

    .line 52
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;
    iget-object v2, p0, Lcom/neuron/mytelkom/adapter/DashboardAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030034

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    const v2, 0x7f0a00da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0a00d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0a00d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    sget-object v3, Lcom/neuron/mytelkom/utils/Data;->dashboardIcon:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v2, v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    sget-object v3, Lcom/neuron/mytelkom/utils/Data;->dashboardMenu:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    sget-object v3, Lcom/neuron/mytelkom/utils/Data;->dashboardMenu:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v1

    .line 58
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/DashboardAdapter$ViewHolder;
    goto :goto_0
.end method
