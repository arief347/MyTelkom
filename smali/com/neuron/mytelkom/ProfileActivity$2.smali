.class Lcom/neuron/mytelkom/ProfileActivity$2;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/ProfileActivity$2;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity$2;->this$0:Lcom/neuron/mytelkom/ProfileActivity;

    invoke-static {v0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->toUpdatePasswordActivity(Landroid/app/Activity;)V

    .line 202
    return-void
.end method
