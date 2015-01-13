.class public Lcom/neuron/mytelkom/LoginActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field private btnLogin:Landroid/widget/Button;

.field private btnRegister:Landroid/widget/Button;

.field private edtPassword:Landroid/widget/EditText;

.field private edtUsername:Landroid/widget/EditText;

.field private txtForgotPassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->edtUsername:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->edtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method public static toLoginActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 68
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/LoginActivity$1;-><init>(Lcom/neuron/mytelkom/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->btnRegister:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/LoginActivity$2;-><init>(Lcom/neuron/mytelkom/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->txtForgotPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/neuron/mytelkom/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/LoginActivity$3;-><init>(Lcom/neuron/mytelkom/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 47
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->btnLogin:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->btnRegister:Landroid/widget/Button;

    .line 49
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->txtForgotPassword:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->edtPassword:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/LoginActivity;->edtUsername:Landroid/widget/EditText;

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/LoginActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/neuron/mytelkom/LoginActivity;->initializeViews()V

    .line 37
    invoke-virtual {p0}, Lcom/neuron/mytelkom/LoginActivity;->initializeLibs()V

    .line 38
    invoke-virtual {p0}, Lcom/neuron/mytelkom/LoginActivity;->setToView()V

    .line 39
    invoke-virtual {p0}, Lcom/neuron/mytelkom/LoginActivity;->initializeActions()V

    .line 40
    return-void
.end method

.method public requestLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 108
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v3, "Please wait..."

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 111
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 113
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v1, params:Lorg/json/JSONObject;
    const-string v3, "signinusername"

    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v3, "signinpassword"

    invoke-static {p2}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v3, "ipaddress"

    const-string v4, "10.1.2.1"

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 119
    .local v2, requestParams:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MTlogin.php?api="

    new-instance v5, Lcom/neuron/mytelkom/LoginActivity$4;

    invoke-direct {v5, p0, v0, p1}, Lcom/neuron/mytelkom/LoginActivity$4;-><init>(Lcom/neuron/mytelkom/LoginActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1           #params:Lorg/json/JSONObject;
    .end local v2           #requestParams:Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setToView()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 59
    const-string v0, "<u>Forgot your password?</u>"

    .line 60
    .local v0, forgotPassword:Ljava/lang/String;
    iget-object v1, p0, Lcom/neuron/mytelkom/LoginActivity;->txtForgotPassword:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
