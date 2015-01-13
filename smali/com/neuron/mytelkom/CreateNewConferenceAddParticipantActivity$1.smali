.class Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 109
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->access$0(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtEmail:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->access$1(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, email:Ljava/lang/String;
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtNoHp:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->access$2(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, noHp:Ljava/lang/String;
    new-instance v4, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-direct {v4}, Lcom/neuron/mytelkom/model/ConferenceAttendees;-><init>()V

    .line 114
    .local v4, user:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    invoke-virtual {v4, v2}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setEmail(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, v3}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setPhone(Ljava/lang/String;)V

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v1, intent:Landroid/content/Intent;
    sget-object v5, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->NEW_USER:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    sget v6, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->ADD_PARTICIPANT_RESULT_CODE:I

    invoke-virtual {v5, v6, v1}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->finish()V

    .line 123
    return-void
.end method
