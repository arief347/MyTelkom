.class public Lcom/neuron/mytelkom/RegisterActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "RegisterActivity.java"


# instance fields
.field private btnActivation:Landroid/widget/Button;

.field private btnRegister:Landroid/widget/Button;

.field private edtEmail:Landroid/widget/EditText;

.field private edtName:Landroid/widget/EditText;

.field private edtPhone:Landroid/widget/EditText;

.field private edtUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtUsername:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/neuron/mytelkom/RegisterActivity;->requestRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "fullName"
    .parameter "mobilePhone"
    .parameter "email"
    .parameter "username"

    .prologue
    .line 97
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v4, "Please wait..."

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 102
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v2, params:Lorg/json/JSONObject;
    const-string v4, "regusername"

    invoke-virtual {v2, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v4, "regemail"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v4, "regfullname"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v4, "mobile1"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v4, "category"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 110
    .local v3, requestParams:Lcom/loopj/android/http/RequestParams;
    const-string v4, "param"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/neuron/mytelkom/RegisterActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v5, "https://my.telkom.co.id/api/MTregistration.php?api="

    new-instance v6, Lcom/neuron/mytelkom/RegisterActivity$3;

    invoke-direct {v6, p0, v0}, Lcom/neuron/mytelkom/RegisterActivity$3;-><init>(Lcom/neuron/mytelkom/RegisterActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v4, v5, v3, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2           #params:Lorg/json/JSONObject;
    .end local v3           #requestParams:Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toRegisterActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 62
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->btnActivation:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/RegisterActivity$1;-><init>(Lcom/neuron/mytelkom/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->btnRegister:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/RegisterActivity$2;-><init>(Lcom/neuron/mytelkom/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public initializeLibs()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeLibs()V

    .line 55
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 42
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtEmail:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtName:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtPhone:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->edtUsername:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->btnRegister:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity;->btnActivation:Landroid/widget/Button;

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/RegisterActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/neuron/mytelkom/RegisterActivity;->initializeViews()V

    .line 33
    invoke-virtual {p0}, Lcom/neuron/mytelkom/RegisterActivity;->initializeLibs()V

    .line 34
    invoke-virtual {p0}, Lcom/neuron/mytelkom/RegisterActivity;->initializeActions()V

    .line 35
    return-void
.end method
