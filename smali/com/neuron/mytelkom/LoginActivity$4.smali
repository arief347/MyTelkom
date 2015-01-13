.class Lcom/neuron/mytelkom/LoginActivity$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/LoginActivity;->requestLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/LoginActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/LoginActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/LoginActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->val$username:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 155
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    const-string v1, "Login error. Please try again. A"

    invoke-static {v0, v1}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 128
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v1, res:Ljava/lang/String;
    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 132
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, response:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    iget-object v3, v3, Lcom/neuron/mytelkom/LoginActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    iget-object v4, p0, Lcom/neuron/mytelkom/LoginActivity$4;->val$username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/neuron/mytelkom/utils/Preference;->setUsername(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    iget-object v3, v3, Lcom/neuron/mytelkom/LoginActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/neuron/mytelkom/utils/Preference;->setIsLogin(Z)V

    .line 137
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    invoke-static {v3}, Lcom/neuron/mytelkom/MainActivity;->toMainActivity(Landroid/app/Activity;)V

    .line 138
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/LoginActivity;->finish()V

    .line 148
    .end local v1           #res:Ljava/lang/String;
    .end local v2           #response:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 141
    .restart local v1       #res:Ljava/lang/String;
    .restart local v2       #response:Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/neuron/mytelkom/LoginActivity$4;->this$0:Lcom/neuron/mytelkom/LoginActivity;

    const-string v4, "Login error. Please try again"

    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1           #res:Ljava/lang/String;
    .end local v2           #response:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
