.class Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;
.super Ljava/lang/Object;
.source "DetilImeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilImeFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilImeFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilImeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilImeFragment;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilImeFragment;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilImeFragment;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/ImeiItem;->getProductType()Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilImeFragment;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ImeiItem;->getProductNo()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
