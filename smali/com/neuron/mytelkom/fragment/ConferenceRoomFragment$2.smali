.class Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$2;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    const-string v1, "End Conference"

    .line 134
    const-string v2, "Do you wish to end this conference"

    .line 135
    sget-object v3, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->STOP:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V

    .line 136
    return-void
.end method
