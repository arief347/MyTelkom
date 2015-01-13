.class Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Telepon Rumah "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
