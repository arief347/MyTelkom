.class Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ConferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/ConferenceFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/ConferenceFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    .line 155
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

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 169
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->access$0(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->access$1(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ConferenceFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->access$2(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 160
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 161
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->fetchResponse(Ljava/lang/String;)V

    .line 162
    return-void
.end method
