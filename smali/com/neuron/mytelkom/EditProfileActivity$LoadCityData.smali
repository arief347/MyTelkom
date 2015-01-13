.class Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;
.super Landroid/os/AsyncTask;
.source "EditProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadCityData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/neuron/mytelkom/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/EditProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .parameter "params"

    .prologue
    .line 438
    iget-object v7, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    iget-object v7, v7, Lcom/neuron/mytelkom/EditProfileActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/utils/Preference;->getCity()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, jsons:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 443
    .local v3, json:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 457
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #json:Lorg/json/JSONObject;
    :goto_1
    iget-object v7, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 459
    const/4 v7, 0x0

    return-object v7

    .line 446
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #json:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 447
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 448
    .local v2, item:Ljava/lang/Object;
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 450
    .local v6, object:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    #getter for: Lcom/neuron/mytelkom/EditProfileActivity;->listCity:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/neuron/mytelkom/EditProfileActivity;->access$4(Lcom/neuron/mytelkom/EditProfileActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "LCOM"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 452
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #item:Ljava/lang/Object;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 467
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    #calls: Lcom/neuron/mytelkom/EditProfileActivity;->bindDataToView()V
    invoke-static {v0}, Lcom/neuron/mytelkom/EditProfileActivity;->access$5(Lcom/neuron/mytelkom/EditProfileActivity;)V

    .line 468
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 429
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->dialog:Landroid/app/ProgressDialog;

    .line 430
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->dialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Harap tunggu..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 433
    return-void
.end method
