.class public Lcom/neuron/mytelkom/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

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
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteProduct(Ljava/lang/String;)V
    .locals 9
    .parameter "productNo"

    .prologue
    .line 111
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v6, "Please wait..."

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 116
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v2, object:Lorg/json/JSONObject;
    const-string v6, "dataType"

    const-string v7, "DELETE_PORTFOLIO"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v6, "dataSource"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v6, "transactionID"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v6, "statusCode"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v6, "strMessage"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v3, parameter:Lorg/json/JSONObject;
    const-string v6, "username"

    iget-object v7, p0, Lcom/neuron/mytelkom/base/BaseFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v6, "prodno"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v6, "dataParameter"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, requestedParam:Ljava/lang/String;
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 132
    .local v4, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v4, v6, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, Lcom/neuron/mytelkom/base/BaseFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    .line 135
    new-instance v8, Lcom/neuron/mytelkom/base/BaseFragment$3;

    invoke-direct {v8, p0, v0}, Lcom/neuron/mytelkom/base/BaseFragment$3;-><init>(Lcom/neuron/mytelkom/base/BaseFragment;Landroid/app/ProgressDialog;)V

    .line 134
    invoke-virtual {v6, v7, v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #parameter:Lorg/json/JSONObject;
    .end local v4           #params:Lcom/loopj/android/http/RequestParams;
    .end local v5           #requestedParam:Ljava/lang/String;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fetchResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 73
    return-void
.end method

.method public initialiazeIntent()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public initializeActions()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public initializeLibs()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public initializeRequest()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public initializeViews()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neuron/mytelkom/utils/Preference;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/base/BaseFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    .line 34
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/base/BaseFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/base/BaseFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/base/BaseFragment;->gson:Lcom/google/gson/Gson;

    .line 37
    return-void
.end method

.method public setToView()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "productName"
    .parameter "productId"

    .prologue
    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Hapus Produk"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Apakah anda yakin akan menghapus produk ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") dari portofolio anda?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 88
    const-string v4, "Ya"

    new-instance v5, Lcom/neuron/mytelkom/base/BaseFragment$1;

    invoke-direct {v5, p0, p2}, Lcom/neuron/mytelkom/base/BaseFragment$1;-><init>(Lcom/neuron/mytelkom/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 95
    const-string v4, "Tidak"

    new-instance v5, Lcom/neuron/mytelkom/base/BaseFragment$2;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/base/BaseFragment$2;-><init>(Lcom/neuron/mytelkom/base/BaseFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 107
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 108
    return-void
.end method
