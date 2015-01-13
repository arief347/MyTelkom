.class Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$3;
.super Ljava/lang/Object;
.source "CreateNewConferenceAddParticipantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$3;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$3;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$3;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    iget-object v1, v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->attendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;

    #calls: Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->showDeleteDialog(Lcom/neuron/mytelkom/model/ConferenceAttendees;)V
    invoke-static {v0, v1}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->access$3(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;Lcom/neuron/mytelkom/model/ConferenceAttendees;)V

    .line 155
    return-void
.end method
