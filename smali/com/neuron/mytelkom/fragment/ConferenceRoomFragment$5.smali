.class Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$5;
.super Ljava/lang/Object;
.source "ConferenceRoomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$5;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 174
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 175
    return-void
.end method
