.class Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$5;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$5;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 212
    return-void
.end method
