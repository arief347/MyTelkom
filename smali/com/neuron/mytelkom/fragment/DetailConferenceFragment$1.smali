.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$1;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->toCoferenceRoom()V

    .line 124
    return-void
.end method
