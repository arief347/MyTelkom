.class Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;
.super Ljava/lang/Object;
.source "TicketTypeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$5(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, tglMulai:Ljava/lang/String;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglAkhir:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$6(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, tglAkhir:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    invoke-virtual {v2, p3}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->toMyTicket(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Harap pilih tanggal mulai dan akhir untuk pencarian tiket"

    invoke-static {v2, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
