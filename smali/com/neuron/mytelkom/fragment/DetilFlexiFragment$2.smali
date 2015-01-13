.class Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilInformation:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->access$1(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilInformation:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->access$1(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilInformation:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->access$1(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
