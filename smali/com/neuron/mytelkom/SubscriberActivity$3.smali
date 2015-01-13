.class Lcom/neuron/mytelkom/SubscriberActivity$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SubscriberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/SubscriberActivity;->subscriberActionControll(Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;Lcom/neuron/mytelkom/model/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/SubscriberActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SubscriberActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/SubscriberActivity$3;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/SubscriberActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    .line 238
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
    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 253
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 254
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$3;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    .line 255
    const-string v1, "Eror dalam mengirimkan request. Silakan coba kembali"

    .line 256
    const/4 v2, 0x1

    .line 254
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 243
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 244
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity$3;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->fetchActionResponse(Ljava/lang/String;)V

    .line 246
    return-void
.end method
