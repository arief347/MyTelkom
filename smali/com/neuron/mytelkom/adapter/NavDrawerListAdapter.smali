.class public Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavDrawerListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private navDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/NavDrawerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/NavDrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, navDrawerItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/NavDrawerItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->navDrawerItems:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->navDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->navDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 47
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    check-cast v1, Landroid/view/LayoutInflater;

    .line 48
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    .end local v1           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f0a0072

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, imgIcon:Landroid/widget/ImageView;
    const v3, 0x7f0a0073

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, txtTitle:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->navDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neuron/mytelkom/model/NavDrawerItem;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/NavDrawerItem;->getIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->navDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neuron/mytelkom/model/NavDrawerItem;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/NavDrawerItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/MyriadPro-Regular.otf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    return-object p2
.end method
