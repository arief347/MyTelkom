.class Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;
.super Ljava/lang/Object;
.source "CreateNewConferenceAddParticipantActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->showDeleteDialog(Lcom/neuron/mytelkom/model/ConferenceAttendees;)V
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
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_POSITION:Ljava/lang/String;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    iget v2, v2, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    sget v2, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->DELETE_PARTICIPANT_RESULT_CODE:I

    invoke-virtual {v1, v2, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->setResult(ILandroid/content/Intent;)V

    .line 204
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->finish()V

    .line 205
    return-void
.end method
