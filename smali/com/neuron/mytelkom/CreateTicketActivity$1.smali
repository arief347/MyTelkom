.class Lcom/neuron/mytelkom/CreateTicketActivity$1;
.super Ljava/lang/Object;
.source "CreateTicketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateTicketActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateTicketActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateTicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateTicketActivity$1;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$1;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->finish()V

    .line 120
    return-void
.end method
