.class Lcom/neuron/mytelkom/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/LoginActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/LoginActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/LoginActivity$2;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity$2;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    invoke-static {v0}, Lcom/neuron/mytelkom/RegisterActivity;->toRegisterActivity(Landroid/app/Activity;)V

    .line 90
    return-void
.end method
