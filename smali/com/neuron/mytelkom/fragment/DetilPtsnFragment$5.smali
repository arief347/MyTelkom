.class Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DetilPtsnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    .line 167
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

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->access$2(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->scContent:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->access$3(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->access$4(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 173
    .local v0, res:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->fetchResponse(Ljava/lang/String;)V

    .line 175
    return-void
.end method
