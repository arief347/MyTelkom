.class Lcom/neuron/mytelkom/UpdatePasswordActivity$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "UpdatePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/UpdatePasswordActivity;->submitNewPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/UpdatePasswordActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/UpdatePasswordActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;->this$0:Lcom/neuron/mytelkom/UpdatePasswordActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    .line 97
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 114
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 102
    iget-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;->this$0:Lcom/neuron/mytelkom/UpdatePasswordActivity;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->fetchResponse(Ljava/lang/String;)V

    .line 106
    return-void
.end method
