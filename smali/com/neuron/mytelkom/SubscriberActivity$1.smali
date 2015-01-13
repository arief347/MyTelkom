.class Lcom/neuron/mytelkom/SubscriberActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SubscriberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/SubscriberActivity;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/SubscriberActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SubscriberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    .line 122
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
    const/16 v1, 0x8

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 143
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/SubscriberActivity;->access$0(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/SubscriberActivity;->access$1(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/SubscriberActivity;->access$2(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v3, 0x8

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 128
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/neuron/mytelkom/SubscriberActivity;->access$0(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/SubscriberActivity;->access$1(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/neuron/mytelkom/SubscriberActivity;->access$2(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 133
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity$1;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->fetchResponse(Ljava/lang/String;)V

    .line 135
    return-void
.end method
