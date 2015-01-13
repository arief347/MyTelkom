.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$2;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:08041000"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$2;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
