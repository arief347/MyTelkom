.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$4;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;->MODIFY:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    .line 155
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$4;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    invoke-static {v2}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->access$0(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->toUpdateConference(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;Lcom/neuron/mytelkom/model/ConferenceItem;)V

    .line 156
    return-void
.end method
