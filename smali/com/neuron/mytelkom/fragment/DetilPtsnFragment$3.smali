.class Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$3;
.super Ljava/lang/Object;
.source "DetilPtsnFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    iget-object v1, v1, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-static {v0, v1, v2}, Lcom/neuron/mytelkom/CreateTicketActivity;->toCreateTicketActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/Product;Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;)V

    .line 133
    return-void
.end method
