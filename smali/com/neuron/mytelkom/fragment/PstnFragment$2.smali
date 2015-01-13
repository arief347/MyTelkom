.class Lcom/neuron/mytelkom/fragment/PstnFragment$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PstnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/PstnFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/PstnFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    .line 136
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

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 162
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$0(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$1(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$2(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 141
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$0(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$1(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$2(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 146
    .local v0, res:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "PSTN"

    invoke-static {v2, v3}, Lcom/neuron/mytelkom/model/Product;->getListProduct(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    #setter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v1, v2}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$3(Lcom/neuron/mytelkom/fragment/PstnFragment;Ljava/util/LinkedList;)V

    .line 148
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$4(Lcom/neuron/mytelkom/fragment/PstnFragment;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->setToView()V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$0(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$1(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/PstnFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/PstnFragment;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->access$2(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
