.class Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$1;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$1;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->finish()V

    .line 145
    return-void
.end method
