.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$3;
.super Ljava/lang/Object;
.source "DetailConferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$3;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    const-string v1, "Cancel Conference"

    .line 143
    const-string v2, "Do you wish to cancel this conference"

    .line 144
    sget-object v3, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;->CANCEL:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V

    .line 145
    return-void
.end method
