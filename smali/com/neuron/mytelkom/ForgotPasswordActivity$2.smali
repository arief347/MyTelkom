.class Lcom/neuron/mytelkom/ForgotPasswordActivity$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ForgotPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/ForgotPasswordActivity;->requestForgotPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/ForgotPasswordActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    .line 91
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 116
    iget-object v0, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 117
    iget-object v0, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 96
    iget-object v2, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 98
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, response:Lorg/json/JSONObject;
    const-string v2, "rescode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    const-string v3, "resmsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->finish()V

    .line 109
    .end local v1           #response:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 103
    .restart local v1       #response:Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    const-string v3, "Can not send your request. Please try again"

    invoke-static {v2, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #response:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method
