.class Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$1;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    iget-object v1, v1, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    .line 109
    invoke-static {v0, v1, v2}, Lcom/neuron/mytelkom/CreateTicketActivity;->toCreateTicketActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/Product;Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;)V

    .line 111
    return-void
.end method
