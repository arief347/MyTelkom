.class public Lcom/neuron/mytelkom/UpdatePasswordActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "UpdatePasswordActivity.java"


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field private edtConfirm:Landroid/widget/EditText;

.field private edtNewPassword:Landroid/widget/EditText;

.field private edtOldPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static toUpdatePasswordActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/UpdatePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 131
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, object:Lorg/json/JSONObject;
    const-string v2, "rescode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update Password Berhasil."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v3, "resmsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->finish()V

    .line 143
    .end local v1           #object:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 137
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v1           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 59
    iget-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->btnSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/UpdatePasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity$1;-><init>(Lcom/neuron/mytelkom/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 48
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->edtConfirm:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->edtNewPassword:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->edtOldPassword:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->btnSubmit:Landroid/widget/Button;

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 35
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->initializeViews()V

    .line 40
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->initializeActions()V

    .line 41
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/neuron/mytelkom/UpdatePasswordActivity;->finish()V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected submitNewPassword()V
    .locals 11

    .prologue
    .line 71
    iget-object v8, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->edtOldPassword:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, oldPassword:Ljava/lang/String;
    iget-object v8, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, newPassword:Ljava/lang/String;
    iget-object v8, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->edtConfirm:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, confirmPassword:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    :cond_0
    const-string v8, "Field tidak boleh kosong"

    invoke-static {p0, v8}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 79
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v4, object:Lorg/json/JSONObject;
    const-string v8, "telkomid"

    iget-object v9, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v9}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v8, "passwordnew"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v8, "passwordconfirm"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v8, "passwordold"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, postParam:Ljava/lang/String;
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 87
    .local v6, params:Lcom/loopj/android/http/RequestParams;
    const-string v8, "param"

    invoke-virtual {v6, v8, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 91
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, dialog:Landroid/app/ProgressDialog;
    const-string v8, "Update Password"

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    const-string v8, "Harap Tunggu..."

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 97
    iget-object v8, p0, Lcom/neuron/mytelkom/UpdatePasswordActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v9, "https://my.telkom.co.id/api/MTchangePassword.php?api="

    new-instance v10, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;

    invoke-direct {v10, p0, v1}, Lcom/neuron/mytelkom/UpdatePasswordActivity$2;-><init>(Lcom/neuron/mytelkom/UpdatePasswordActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v8, v9, v6, v10}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v6           #params:Lcom/loopj/android/http/RequestParams;
    .end local v7           #postParam:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method
