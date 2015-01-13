.class Lcom/neuron/mytelkom/ActivationActivity$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/ActivationActivity;->postActivation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/ActivationActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/ActivationActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/ActivationActivity$2;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/ActivationActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    .line 78
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
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 94
    iget-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity$2;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    .line 95
    const-string v1, "Gagal melakukan aktivasi. Silakan coba lagi"

    .line 94
    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 83
    iget-object v1, p0, Lcom/neuron/mytelkom/ActivationActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 85
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/ActivationActivity$2;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/ActivationActivity;->fetchResponse(Ljava/lang/String;)V

    .line 86
    return-void
.end method
