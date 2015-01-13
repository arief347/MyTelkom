.class Lcom/neuron/mytelkom/SplashscreenActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SplashscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/SplashscreenActivity;->initializeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/SplashscreenActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SplashscreenActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/SplashscreenActivity$1;->this$0:Lcom/neuron/mytelkom/SplashscreenActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/SplashscreenActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 68
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/neuron/mytelkom/SplashscreenActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 94
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 73
    iget-object v3, p0, Lcom/neuron/mytelkom/SplashscreenActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/neuron/mytelkom/SplashscreenActivity$1;->this$0:Lcom/neuron/mytelkom/SplashscreenActivity;

    iget-object v3, v3, Lcom/neuron/mytelkom/SplashscreenActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v3, v2}, Lcom/neuron/mytelkom/utils/Preference;->setCity(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/neuron/mytelkom/SplashscreenActivity$1;->this$0:Lcom/neuron/mytelkom/SplashscreenActivity;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/SplashscreenActivity;->route()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method
