.class Lcom/neuron/mytelkom/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/ForgotPasswordActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/ForgotPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$1;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$1;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    #getter for: Lcom/neuron/mytelkom/ForgotPasswordActivity;->edtEmail:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->access$0(Lcom/neuron/mytelkom/ForgotPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, email:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$1;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    const-string v2, "Field can not be blank"

    invoke-static {v1, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity$1;->this$0:Lcom/neuron/mytelkom/ForgotPasswordActivity;

    #calls: Lcom/neuron/mytelkom/ForgotPasswordActivity;->requestForgotPassword(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->access$1(Lcom/neuron/mytelkom/ForgotPasswordActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
