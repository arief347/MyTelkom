.class Lcom/neuron/mytelkom/fragment/FlexiFragment$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FlexiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/FlexiFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/FlexiFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    .line 138
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

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 163
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$0(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$1(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$2(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 143
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$0(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$1(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$2(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 148
    .local v0, res:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "FLEXI"

    invoke-static {v2, v3}, Lcom/neuron/mytelkom/model/Product;->getListProduct(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    #setter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v1, v2}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$3(Lcom/neuron/mytelkom/fragment/FlexiFragment;Ljava/util/LinkedList;)V

    .line 149
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$4(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->setToView()V

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$0(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$1(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/FlexiFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/FlexiFragment;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->access$2(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
