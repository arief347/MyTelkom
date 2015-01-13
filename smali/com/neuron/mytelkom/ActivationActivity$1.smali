.class Lcom/neuron/mytelkom/ActivationActivity$1;
.super Ljava/lang/Object;
.source "ActivationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/ActivationActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/ActivationActivity$1;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity$1;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    iget-object v1, p0, Lcom/neuron/mytelkom/ActivationActivity$1;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    #getter for: Lcom/neuron/mytelkom/ActivationActivity;->edtUsername:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/neuron/mytelkom/ActivationActivity;->access$0(Lcom/neuron/mytelkom/ActivationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/neuron/mytelkom/ActivationActivity$1;->this$0:Lcom/neuron/mytelkom/ActivationActivity;

    #getter for: Lcom/neuron/mytelkom/ActivationActivity;->edtCode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/neuron/mytelkom/ActivationActivity;->access$1(Lcom/neuron/mytelkom/ActivationActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 54
    #calls: Lcom/neuron/mytelkom/ActivationActivity;->postActivation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/neuron/mytelkom/ActivationActivity;->access$2(Lcom/neuron/mytelkom/ActivationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
