.class Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$3;
.super Ljava/lang/Object;
.source "CreateNewConferenceParticipantActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$3;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$3;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    .line 174
    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->EDIT:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    .line 175
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$3;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->access$0(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    .line 173
    invoke-static {v1, v2, v0, p3}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->toCreateNewConferenceAddParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;Lcom/neuron/mytelkom/model/ConferenceAttendees;I)V

    .line 176
    return-void
.end method
