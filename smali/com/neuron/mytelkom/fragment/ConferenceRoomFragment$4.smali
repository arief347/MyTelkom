.class Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;
.super Ljava/lang/Object;
.source "ConferenceRoomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

.field private final synthetic val$type:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    iput-object p2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;->val$type:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;->val$type:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    sget-object v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->STOP:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->requestEndConference()V

    .line 168
    :cond_0
    return-void
.end method
