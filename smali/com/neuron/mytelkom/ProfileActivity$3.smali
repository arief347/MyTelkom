.class Lcom/neuron/mytelkom/ProfileActivity$3;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/ProfileActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/ProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/ProfileActivity$3;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity$3;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    iget-object v1, p0, Lcom/neuron/mytelkom/ProfileActivity$3;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    #getter for: Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;
    invoke-static {v1}, Lcom/neuron/mytelkom/ProfileActivity;->access$3(Lcom/neuron/mytelkom/ProfileActivity;)Lcom/neuron/mytelkom/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/EditProfileActivity;->toEditProfileActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/User;)V

    .line 211
    return-void
.end method
