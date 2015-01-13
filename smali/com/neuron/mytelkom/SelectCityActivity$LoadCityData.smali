.class Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;
.super Landroid/os/AsyncTask;
.source "SelectCityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/SelectCityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lcom/neuron/mytelkom/SelectCityActivity;


# direct methods
.method private constructor <init>(Lcom/neuron/mytelkom/SelectCityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neuron/mytelkom/SelectCityActivity;Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;-><init>(Lcom/neuron/mytelkom/SelectCityActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .parameter "params"

    .prologue
    .line 100
    iget-object v7, p0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    iget-object v7, v7, Lcom/neuron/mytelkom/SelectCityActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/utils/Preference;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, cityData:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, object:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 105
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 117
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #object:Lorg/json/JSONObject;
    :goto_1
    const/4 v7, 0x0

    return-object v7

    .line 107
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6       #object:Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, item:Ljava/lang/Object;
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, jsonObject:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    #getter for: Lcom/neuron/mytelkom/SelectCityActivity;->listCity:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/neuron/mytelkom/SelectCityActivity;->access$0(Lcom/neuron/mytelkom/SelectCityActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "LCOM"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #item:Ljava/lang/Object;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 125
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    .line 126
    const v2, 0x1090003

    .line 127
    const v3, 0x102000a

    .line 128
    iget-object v4, p0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    #getter for: Lcom/neuron/mytelkom/SelectCityActivity;->listCity:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/neuron/mytelkom/SelectCityActivity;->access$0(Lcom/neuron/mytelkom/SelectCityActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .line 125
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 130
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    #getter for: Lcom/neuron/mytelkom/SelectCityActivity;->lvSelectCity:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/neuron/mytelkom/SelectCityActivity;->access$1(Lcom/neuron/mytelkom/SelectCityActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    return-void
.end method
