.class Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;
.super Ljava/lang/Object;
.source "TicketTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 114
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDateSetListenerMulai:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$11(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I
    invoke-static {v3}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$8(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I
    invoke-static {v4}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$9(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I
    invoke-static {v5}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$10(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)I

    move-result v5

    .line 114
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 117
    .local v0, datePickerDialogMulai:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 118
    return-void
.end method
