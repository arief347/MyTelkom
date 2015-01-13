.class Lcom/neuron/mytelkom/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/RegisterActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 76
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    #getter for: Lcom/neuron/mytelkom/RegisterActivity;->edtName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/neuron/mytelkom/RegisterActivity;->access$0(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, fullName:Ljava/lang/String;
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    #getter for: Lcom/neuron/mytelkom/RegisterActivity;->edtPhone:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/neuron/mytelkom/RegisterActivity;->access$1(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, mobilePhone:Ljava/lang/String;
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    #getter for: Lcom/neuron/mytelkom/RegisterActivity;->edtEmail:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/neuron/mytelkom/RegisterActivity;->access$2(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, email:Ljava/lang/String;
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    #getter for: Lcom/neuron/mytelkom/RegisterActivity;->edtUsername:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/neuron/mytelkom/RegisterActivity;->access$3(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, username:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    const-string v5, "Semua field harus terisi"

    invoke-static {v4, v5}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity$2;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    #calls: Lcom/neuron/mytelkom/RegisterActivity;->requestRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v1, v2, v0, v3}, Lcom/neuron/mytelkom/RegisterActivity;->access$4(Lcom/neuron/mytelkom/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
