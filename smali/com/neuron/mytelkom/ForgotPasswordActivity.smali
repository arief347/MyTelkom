.class public Lcom/neuron/mytelkom/ForgotPasswordActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "ForgotPasswordActivity.java"


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field private edtEmail:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/ForgotPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity;->edtEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/ForgotPasswordActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->requestForgotPassword(Ljava/lang/String;)V

    return-void
.end method

.method private requestForgotPassword(Ljava/lang/String;)V
    .locals 7
    .parameter "email"

    .prologue
    .line 80
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v4, "Please wait..."

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 85
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v2, object:Lorg/json/JSONObject;
    const-string v4, "email"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 89
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v4, "param"

    invoke-virtual {v3, v4, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v4, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v5, "https://my.telkom.co.id/api/MobileForgetPassword1.php?api="

    new-instance v6, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;

    invoke-direct {v6, p0, v0}, Lcom/neuron/mytelkom/ForgotPasswordActivity$2;-><init>(Lcom/neuron/mytelkom/ForgotPasswordActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v4, v5, v3, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toForgotPasswordActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/ForgotPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 59
    iget-object v0, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity;->btnSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/ForgotPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/ForgotPasswordActivity$1;-><init>(Lcom/neuron/mytelkom/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public initializeLibs()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeLibs()V

    .line 52
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 44
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity;->edtEmail:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/ForgotPasswordActivity;->btnSubmit:Landroid/widget/Button;

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->initializeViews()V

    .line 35
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->initializeLibs()V

    .line 36
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ForgotPasswordActivity;->initializeActions()V

    .line 37
    return-void
.end method
