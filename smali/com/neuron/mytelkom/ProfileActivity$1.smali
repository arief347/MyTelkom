.class Lcom/neuron/mytelkom/ProfileActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/ProfileActivity;->requestProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/ProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/ProfileActivity$1;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    .line 85
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

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 101
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity$1;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    #getter for: Lcom/neuron/mytelkom/ProfileActivity;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/ProfileActivity;->access$0(Lcom/neuron/mytelkom/ProfileActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity$1;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    #getter for: Lcom/neuron/mytelkom/ProfileActivity;->lnProfile:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/ProfileActivity;->access$1(Lcom/neuron/mytelkom/ProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity$1;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    #getter for: Lcom/neuron/mytelkom/ProfileActivity;->viewError:Landroid/view/View;
    invoke-static {v0}, Lcom/neuron/mytelkom/ProfileActivity;->access$2(Lcom/neuron/mytelkom/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 91
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 92
    .local v0, res:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/neuron/mytelkom/ProfileActivity$1;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/ProfileActivity;->fetchResponse(Ljava/lang/String;)V

    .line 94
    return-void
.end method
