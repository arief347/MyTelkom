.class Lcom/neuron/mytelkom/CreateTicketActivity$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CreateTicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateTicketActivity;->getLevel2ComplaintList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

.field private final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateTicketActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateTicketActivity$4;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/CreateTicketActivity$4;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 407
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
    .line 422
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 423
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 424
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity$4;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    const-string v1, "Error dalam mendapatkan complaint list"

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 412
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateTicketActivity$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 413
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 414
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateTicketActivity$4;->this$0:Lcom/neuron/mytelkom/CreateTicketActivity;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->fetchComplaintListLevel2(Ljava/lang/String;)V

    .line 416
    return-void
.end method
