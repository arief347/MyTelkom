.class Lcom/neuron/mytelkom/EditProfileActivity$2;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/EditProfileActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/EditProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/EditProfileActivity$2;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$2;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/EditProfileActivity;->showDialog(I)V

    .line 228
    return-void
.end method
