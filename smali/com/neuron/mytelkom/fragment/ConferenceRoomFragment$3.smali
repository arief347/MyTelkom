.class Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$3;
.super Ljava/lang/Object;
.source "ConferenceRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/SubscriberActivity;->toSubscriberActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/ConferenceItem;)V

    .line 145
    return-void
.end method
