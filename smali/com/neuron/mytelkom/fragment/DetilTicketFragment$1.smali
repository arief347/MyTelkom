.class Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DetilTicketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    .line 158
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

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 172
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->access$0(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->access$1(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 163
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 164
    .local v0, response:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->fetchResponse(Ljava/lang/String;)V

    .line 165
    return-void
.end method
