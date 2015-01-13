.class Lcom/neuron/mytelkom/CreateTicketActivity$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CreateTicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateTicketActivity;->postComplaint()V
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
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateTicketActivity$5;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    .line 516
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 529
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$5;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    iget-object v0, v0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 530
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$5;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    const-string v1, "Error in creating ticket"

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 520
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 521
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$5;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    iget-object v0, v0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 522
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$5;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/CreateTicketActivity;->fetchResponse(Ljava/lang/String;)V

    .line 523
    return-void
.end method
