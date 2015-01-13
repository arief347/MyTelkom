.class Lcom/neuron/mytelkom/SubscriberActivity$2;
.super Ljava/lang/Object;
.source "SubscriberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/SubscriberActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/SubscriberActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SubscriberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/SubscriberActivity$2;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity$2;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$2;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    #getter for: Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/SubscriberActivity;->access$3(Lcom/neuron/mytelkom/SubscriberActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/Subscriber;

    #calls: Lcom/neuron/mytelkom/SubscriberActivity;->openActionDialog(Lcom/neuron/mytelkom/model/Subscriber;)V
    invoke-static {v1, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->access$4(Lcom/neuron/mytelkom/SubscriberActivity;Lcom/neuron/mytelkom/model/Subscriber;)V

    .line 172
    return-void
.end method
