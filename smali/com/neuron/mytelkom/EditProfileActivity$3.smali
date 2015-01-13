.class Lcom/neuron/mytelkom/EditProfileActivity$3;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/EditProfileActivity$3;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$3;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/EditProfileActivity;->updateProfileData()V

    .line 237
    return-void
.end method
