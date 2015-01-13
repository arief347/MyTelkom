.class Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$3;
.super Ljava/lang/Object;
.source "DetilFlexiFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    iget-object v1, v1, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    .line 136
    invoke-static {v0, v1, v2}, Lcom/neuron/mytelkom/CreateTicketActivity;->toCreateTicketActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/Product;Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;)V

    .line 138
    return-void
.end method
