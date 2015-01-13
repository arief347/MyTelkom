.class Lcom/neuron/mytelkom/CreateNewConferenceActivity$6;
.super Ljava/lang/Object;
.source "CreateNewConferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$6;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$6;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->showDialog(I)V

    .line 267
    return-void
.end method
