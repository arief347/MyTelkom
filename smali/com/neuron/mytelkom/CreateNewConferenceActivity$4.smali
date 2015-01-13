.class Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;
.super Ljava/lang/Object;
.source "CreateNewConferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 213
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtSubject:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$11(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, subject:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$12(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;
    invoke-static {v7}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$13(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v0, v6, v7

    .line 215
    .local v0, jam:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$14(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;
    invoke-static {v7}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$15(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v2, v6, v7

    .line 216
    .local v2, menit:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$9(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, waktu:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$16(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, tanggal:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$17(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/Spinner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 220
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    :cond_0
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 222
    const-string v7, "Field harus terisi semua"

    .line 221
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 223
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 249
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$18(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    .local v1, jmlPeserta:I
    if-ge v1, v9, :cond_2

    .line 227
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 228
    const-string v7, "Minimum total participant is 3"

    .line 227
    invoke-static {v6, v7}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->doCreateOrUpdateAction()V

    goto :goto_0

    .line 234
    .end local v1           #jmlPeserta:I
    :cond_3
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 235
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 236
    :cond_4
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 237
    const-string v7, "Field harus terisi semua"

    .line 236
    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 238
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :cond_5
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$18(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .restart local v1       #jmlPeserta:I
    if-ge v1, v9, :cond_6

    .line 242
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 243
    const-string v7, "Minimum total participant is 3"

    .line 242
    invoke-static {v6, v7}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_6
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->doCreateOrUpdateAction()V

    goto :goto_0
.end method
