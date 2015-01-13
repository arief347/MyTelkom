.class Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilBilling:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->access$0(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilBilling:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->access$0(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilBilling:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->access$0(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
