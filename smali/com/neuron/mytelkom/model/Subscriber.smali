.class public Lcom/neuron/mytelkom/model/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6dc61d3730192e58L


# instance fields
.field callerId:Ljava/lang/String;

.field conferenceRole:Ljava/lang/String;

.field id:Ljava/lang/String;

.field isMute:Ljava/lang/String;

.field isSpeaking:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListSubscriber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/Subscriber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 70
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, object:Lorg/json/JSONObject;
    const-string v9, "rescode"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    new-instance v7, Lorg/json/JSONObject;

    const-string v9, "Result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v7, resObj:Lorg/json/JSONObject;
    const-string v9, "rescode"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONArray;

    const-string v9, "Result"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, arrItem:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 76
    .local v8, subscriber:Lcom/neuron/mytelkom/model/Subscriber;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 77
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_1

    move-object v4, v5

    .line 98
    .end local v0           #arrItem:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #resObj:Lorg/json/JSONObject;
    .end local v8           #subscriber:Lcom/neuron/mytelkom/model/Subscriber;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 79
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .restart local v0       #arrItem:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .restart local v6       #object:Lorg/json/JSONObject;
    .restart local v7       #resObj:Lorg/json/JSONObject;
    .restart local v8       #subscriber:Lcom/neuron/mytelkom/model/Subscriber;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 80
    .local v3, item:Lorg/json/JSONObject;
    new-instance v8, Lcom/neuron/mytelkom/model/Subscriber;

    .end local v8           #subscriber:Lcom/neuron/mytelkom/model/Subscriber;
    invoke-direct {v8}, Lcom/neuron/mytelkom/model/Subscriber;-><init>()V

    .line 81
    .restart local v8       #subscriber:Lcom/neuron/mytelkom/model/Subscriber;
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Subscriber;->setName(Ljava/lang/String;)V

    .line 82
    const-string v9, "callID"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Subscriber;->setCallerId(Ljava/lang/String;)V

    .line 83
    const-string v9, "conferenceRole"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Subscriber;->setConferenceRole(Ljava/lang/String;)V

    .line 84
    const-string v9, "subscriberID"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Subscriber;->setId(Ljava/lang/String;)V

    .line 85
    const-string v9, "isMute"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Subscriber;->setIsMute(Ljava/lang/String;)V

    .line 86
    const-string v9, "isSpeaking"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Subscriber;->setIsSpeaking(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0           #arrItem:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #item:Lorg/json/JSONObject;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #resObj:Lorg/json/JSONObject;
    .end local v8           #subscriber:Lcom/neuron/mytelkom/model/Subscriber;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .restart local v0       #arrItem:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .restart local v6       #object:Lorg/json/JSONObject;
    .restart local v7       #resObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Subscriber;>;"
    goto :goto_2
.end method


# virtual methods
.method public getCallerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Subscriber;->callerId:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Subscriber;->conferenceRole:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Subscriber;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Subscriber;->isMute:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSpeaking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Subscriber;->isSpeaking:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Subscriber;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCallerId(Ljava/lang/String;)V
    .locals 0
    .parameter "callerId"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Subscriber;->callerId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setConferenceRole(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceRole"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Subscriber;->conferenceRole:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Subscriber;->id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setIsMute(Ljava/lang/String;)V
    .locals 0
    .parameter "isMute"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Subscriber;->isMute:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setIsSpeaking(Ljava/lang/String;)V
    .locals 0
    .parameter "isSpeaking"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Subscriber;->isSpeaking:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Subscriber;->name:Ljava/lang/String;

    .line 33
    return-void
.end method
