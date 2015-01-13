.class Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;
.super Ljava/lang/Object;
.source "DetilTicketFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnDetailTracking:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->access$3(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnDetailTracking:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->access$3(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->access$4(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->setTrackingData()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnDetailTracking:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->access$3(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
