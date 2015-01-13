.class Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;
.super Ljava/lang/Object;
.source "CreateNewConferenceParticipantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->access$0(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    .line 155
    const-string v1, "Minimum conference participant is 3"

    .line 154
    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->isModify:Z
    invoke-static {v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->access$1(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->updateConference()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->createNewConference()V

    goto :goto_0
.end method
