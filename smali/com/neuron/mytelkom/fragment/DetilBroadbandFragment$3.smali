.class Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DetilBroadbandFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    .line 159
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

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 175
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->access$0(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->scContent:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->access$1(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->access$2(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v0, res:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->fetchResponse(Ljava/lang/String;)V

    .line 167
    return-void
.end method
