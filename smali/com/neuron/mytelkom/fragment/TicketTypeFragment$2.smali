.class Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;
.super Ljava/lang/Object;
.source "TicketTypeFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/fragment/TicketTypeFragment;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #setter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I
    invoke-static {v0, p2}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$0(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;I)V

    .line 166
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #setter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I
    invoke-static {v0, p3}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$1(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;I)V

    .line 167
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #setter for: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I
    invoke-static {v0, p4}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$2(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;I)V

    .line 168
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    #calls: Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->updateDisplayAkhir()V
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->access$4(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V

    .line 169
    return-void
.end method
