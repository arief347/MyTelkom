.class public Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "TicketTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static productName:[Ljava/lang/String;


# instance fields
.field activity:Landroid/app/Activity;

.field productIcon:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    const-string v2, "Speedy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "PSTN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "Flexi"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->productName:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 26
    iput-object v0, p0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->productIcon:[I

    .line 31
    iput-object p1, p0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->activity:Landroid/app/Activity;

    .line 32
    return-void

    .line 23
    :array_0
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->productIcon:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 55
    move-object v2, p2

    .line 56
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 57
    .local v0, holder:Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 58
    new-instance v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;-><init>()V

    .line 59
    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;
    iget-object v3, p0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 60
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03003d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;->txtItem:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;->txtItem:Landroid/widget/TextView;

    sget-object v4, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->productName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->productIcon:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    return-object v2

    .line 65
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;
    check-cast v0, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/neuron/mytelkom/adapter/TicketTypeAdapter$ViewHolder;
    goto :goto_0
.end method
