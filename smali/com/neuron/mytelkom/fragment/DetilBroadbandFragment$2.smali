.class Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;
.super Ljava/lang/Object;
.source "DetilBroadbandFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    iget-object v1, v1, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getProductType()Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    iget-object v2, v2, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
