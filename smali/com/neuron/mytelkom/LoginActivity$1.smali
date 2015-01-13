.class Lcom/neuron/mytelkom/LoginActivity$1;
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
    iput-object p1, p0, Lcom/neuron/mytelkom/LoginActivity$1;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/neuron/mytelkom/LoginActivity$1;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    #getter for: Lcom/neuron/mytelkom/LoginActivity;->edtUsername:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/neuron/mytelkom/LoginActivity;->access$0(Lcom/neuron/mytelkom/LoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, username:Ljava/lang/String;
    iget-object v2, p0, Lcom/neuron/mytelkom/LoginActivity$1;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    #getter for: Lcom/neuron/mytelkom/LoginActivity;->edtPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/neuron/mytelkom/LoginActivity;->access$1(Lcom/neuron/mytelkom/LoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, password:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/neuron/mytelkom/LoginActivity$1;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    const-string v3, "Fields can not be blank"

    invoke-static {v2, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/neuron/mytelkom/LoginActivity$1;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    invoke-virtual {v2, v1, v0}, Lcom/neuron/mytelkom/LoginActivity;->requestLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
