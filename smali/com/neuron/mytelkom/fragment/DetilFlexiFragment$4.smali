.class Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    iget-object v1, v1, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getProductType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    iget-object v2, v2, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
