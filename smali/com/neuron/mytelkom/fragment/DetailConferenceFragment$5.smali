.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DetailConferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    .line 200
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

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 214
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->access$1(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->access$2(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->access$3(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 205
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->fetchResponse(Ljava/lang/String;)V

    .line 207
    return-void
.end method
