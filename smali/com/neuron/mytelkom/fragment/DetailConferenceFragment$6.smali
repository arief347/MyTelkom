.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;
.super Ljava/lang/Object;
.source "DetailConferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

.field private final synthetic val$type:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    iput-object p2, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;->val$type:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;->val$type:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    sget-object v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->CANCEL:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->requestCancelConference()V

    .line 336
    :cond_0
    return-void
.end method
