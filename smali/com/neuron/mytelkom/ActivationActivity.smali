.class public Lcom/neuron/mytelkom/ActivationActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "ActivationActivity.java"


# instance fields
.field private btnActivate:Landroid/widget/Button;

.field private edtCode:Landroid/widget/EditText;

.field private edtUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/ActivationActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity;->edtUsername:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/ActivationActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity;->edtCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/ActivationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/neuron/mytelkom/ActivationActivity;->postActivation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postActivation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "username"
    .parameter "code"

    .prologue
    .line 61
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    const-string v5, "Fields can not be empty"

    invoke-static {p0, v5}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v5, "Harap tunggu..."

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 68
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v2, object:Lorg/json/JSONObject;
    const-string v5, "regusername"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v5, "activation_code"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, requestedParam:Ljava/lang/String;
    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 75
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 76
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v5, "param"

    invoke-virtual {v3, v5, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lcom/neuron/mytelkom/ActivationActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v6, "https://my.telkom.co.id/api/MTActivation.php?api="

    new-instance v7, Lcom/neuron/mytelkom/ActivationActivity$2;

    invoke-direct {v7, p0, v0}, Lcom/neuron/mytelkom/ActivationActivity$2;-><init>(Lcom/neuron/mytelkom/ActivationActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v5, v6, v3, v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    .end local v4           #requestedParam:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toActivationActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 112
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, object:Lorg/json/JSONObject;
    const-string v2, "rescode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcom/neuron/mytelkom/LoginActivity;->toLoginActivity(Landroid/app/Activity;)V

    .line 117
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ActivationActivity;->finish()V

    .line 126
    .end local v1           #object:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 120
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 49
    iget-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity;->btnActivate:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/ActivationActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/ActivationActivity$1;-><init>(Lcom/neuron/mytelkom/ActivationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 39
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity;->edtUsername:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity;->edtCode:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/ActivationActivity;->btnActivate:Landroid/widget/Button;

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ActivationActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ActivationActivity;->initializeViews()V

    .line 32
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ActivationActivity;->initializeActions()V

    .line 33
    return-void
.end method
