.class Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MyTicketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/MyTicketFragment;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    .line 189
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

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 213
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$0(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$1(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 194
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$0(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->indicator:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$1(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 197
    .local v1, res:Ljava/lang/String;
    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/neuron/mytelkom/model/Ticket;->getListTicket(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    #setter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v2, v3}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$2(Lcom/neuron/mytelkom/fragment/MyTicketFragment;Ljava/util/LinkedList;)V

    .line 200
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$3(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    new-instance v0, Lcom/neuron/mytelkom/adapter/MyTicketAdapter;

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$3(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/neuron/mytelkom/adapter/MyTicketAdapter;-><init>(Landroid/app/Activity;Ljava/util/LinkedList;)V

    .line 202
    .local v0, myTicketAdapter:Lcom/neuron/mytelkom/adapter/MyTicketAdapter;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$0(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    .end local v0           #myTicketAdapter:Lcom/neuron/mytelkom/adapter/MyTicketAdapter;
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/MyTicketFragment;->txtTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->access$4(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "No data available"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
