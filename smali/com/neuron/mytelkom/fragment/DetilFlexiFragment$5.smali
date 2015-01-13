.class Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DetilFlexiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    .line 170
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

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 187
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->access$2(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->scContent:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->access$3(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 177
    .local v0, res:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->fetchResponse(Ljava/lang/String;)V

    .line 179
    return-void
.end method
