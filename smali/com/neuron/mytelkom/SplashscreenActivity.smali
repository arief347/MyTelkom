.class public Lcom/neuron/mytelkom/SplashscreenActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "SplashscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/SplashscreenActivity$Delay;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeRequest()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeRequest()V

    .line 63
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v1, "Download Data"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/neuron/mytelkom/SplashscreenActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "https://my.telkom.co.id/api/MTcitymapping.php?api="

    new-instance v3, Lcom/neuron/mytelkom/SplashscreenActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/neuron/mytelkom/SplashscreenActivity$1;-><init>(Lcom/neuron/mytelkom/SplashscreenActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SplashscreenActivity;->setContentView(I)V

    .line 23
    iget-object v0, p0, Lcom/neuron/mytelkom/SplashscreenActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/utils/Preference;->getCity()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SplashscreenActivity;->initializeRequest()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;-><init>(Lcom/neuron/mytelkom/SplashscreenActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public route()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/neuron/mytelkom/SplashscreenActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/neuron/mytelkom/MainActivity;->toMainActivity(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SplashscreenActivity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/neuron/mytelkom/LoginActivity;->toLoginActivity(Landroid/app/Activity;)V

    .line 108
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SplashscreenActivity;->finish()V

    goto :goto_0
.end method
