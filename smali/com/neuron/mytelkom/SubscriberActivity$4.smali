.class Lcom/neuron/mytelkom/SubscriberActivity$4;
.super Ljava/lang/Object;
.source "SubscriberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/SubscriberActivity;->openActionDialog(Lcom/neuron/mytelkom/model/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/SubscriberActivity;

.field private final synthetic val$subscriber:Lcom/neuron/mytelkom/model/Subscriber;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SubscriberActivity;Lcom/neuron/mytelkom/model/Subscriber;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/SubscriberActivity$4;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/SubscriberActivity$4;->val$subscriber:Lcom/neuron/mytelkom/model/Subscriber;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity$4;->this$0:Lcom/neuron/mytelkom/SubscriberActivity;

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->KICK:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    iget-object v2, p0, Lcom/neuron/mytelkom/SubscriberActivity$4;->val$subscriber:Lcom/neuron/mytelkom/model/Subscriber;

    invoke-virtual {v0, v1, v2}, Lcom/neuron/mytelkom/SubscriberActivity;->subscriberActionControll(Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;Lcom/neuron/mytelkom/model/Subscriber;)V

    .line 313
    return-void
.end method
