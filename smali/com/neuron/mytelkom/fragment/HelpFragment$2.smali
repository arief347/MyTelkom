.class Lcom/neuron/mytelkom/fragment/HelpFragment$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/HelpFragment;->getHelpData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/HelpFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    .line 102
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

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 121
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$1(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$2(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$3(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v3, 0x8

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 108
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$1(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$2(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->viewError:Landroid/view/View;
    invoke-static {v1}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$3(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 113
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->fetchResponse(Ljava/lang/String;)V

    .line 114
    return-void
.end method
