.class public Lcom/neuron/mytelkom/base/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/neuron/mytelkom/base/OnInitialiazeView;


# instance fields
.field public asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

.field public gson:Lcom/google/gson/Gson;

.field public preference:Lcom/neuron/mytelkom/utils/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .parameter "newBase"

    .prologue
    .line 74
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;

    invoke-direct {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public fetchResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 63
    return-void
.end method

.method public initialiazeIntent()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public initializeActions()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public initializeLibs()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public initializeRequest()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public initializeViews()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lcom/neuron/mytelkom/utils/Preference;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/utils/Preference;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/base/BaseActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    .line 24
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/base/BaseActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 25
    iget-object v0, p0, Lcom/neuron/mytelkom/base/BaseActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const v1, 0x1d4c0

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/base/BaseActivity;->gson:Lcom/google/gson/Gson;

    .line 27
    return-void
.end method

.method public setToView()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
