.class Lcom/neuron/mytelkom/AddNewProductActivity$1;
.super Ljava/lang/Object;
.source "AddNewProductActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/AddNewProductActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/AddNewProductActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/AddNewProductActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/AddNewProductActivity$1;->this$0:Lcom/neuron/mytelkom/AddNewProductActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity$1;->this$0:Lcom/neuron/mytelkom/AddNewProductActivity;

    #getter for: Lcom/neuron/mytelkom/AddNewProductActivity;->cbAgreement:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->access$0(Lcom/neuron/mytelkom/AddNewProductActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity$1;->this$0:Lcom/neuron/mytelkom/AddNewProductActivity;

    #getter for: Lcom/neuron/mytelkom/AddNewProductActivity;->edtNo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->access$1(Lcom/neuron/mytelkom/AddNewProductActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity$1;->this$0:Lcom/neuron/mytelkom/AddNewProductActivity;

    const-string v1, "Field tidak boleh kosong"

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity$1;->this$0:Lcom/neuron/mytelkom/AddNewProductActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->initializeRequest()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity$1;->this$0:Lcom/neuron/mytelkom/AddNewProductActivity;

    const-string v1, "Anda harus menyetujui semua syarat dan ketentuan yang ada"

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
