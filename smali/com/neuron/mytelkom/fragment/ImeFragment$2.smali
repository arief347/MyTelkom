.class Lcom/neuron/mytelkom/fragment/ImeFragment$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ImeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/ImeFragment;->getImeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/ImeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    .line 130
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
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 156
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$0(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$2(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 136
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$0(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$1(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$2(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/neuron/mytelkom/model/ImeiItem;->getListImeItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->listItem:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$3(Lcom/neuron/mytelkom/fragment/ImeFragment;Ljava/util/ArrayList;)V

    .line 142
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->listItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$4(Lcom/neuron/mytelkom/fragment/ImeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->listItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$4(Lcom/neuron/mytelkom/fragment/ImeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->setToView()V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$0(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$1(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ImeFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ImeFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/ImeFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/ImeFragment;->access$2(Lcom/neuron/mytelkom/fragment/ImeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
