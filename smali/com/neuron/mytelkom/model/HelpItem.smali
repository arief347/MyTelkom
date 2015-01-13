.class public Lcom/neuron/mytelkom/model/HelpItem;
.super Ljava/lang/Object;
.source "HelpItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x47c44b2d81bb70fL


# instance fields
.field content:Ljava/lang/String;

.field id:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListHelp(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/HelpItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 46
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v7, object:Lorg/json/JSONObject;
    const-string v8, "rescode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "00"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 48
    const-string v8, "Result"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 49
    .local v3, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, item:Lcom/neuron/mytelkom/model/HelpItem;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_1

    move-object v4, v5

    .line 67
    .end local v1           #i:I
    .end local v2           #item:Lcom/neuron/mytelkom/model/HelpItem;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .end local v7           #object:Lorg/json/JSONObject;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 53
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .restart local v1       #i:I
    .restart local v2       #item:Lcom/neuron/mytelkom/model/HelpItem;
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .restart local v7       #object:Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Lcom/neuron/mytelkom/model/HelpItem;

    .end local v2           #item:Lcom/neuron/mytelkom/model/HelpItem;
    invoke-direct {v2}, Lcom/neuron/mytelkom/model/HelpItem;-><init>()V

    .line 54
    .restart local v2       #item:Lcom/neuron/mytelkom/model/HelpItem;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 55
    .local v6, obj:Lorg/json/JSONObject;
    const-string v8, "page_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/HelpItem;->setId(Ljava/lang/String;)V

    .line 56
    const-string v8, "page_title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/HelpItem;->setTitle(Ljava/lang/String;)V

    .line 57
    const-string v8, "page_content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/HelpItem;->setContent(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1           #i:I
    .end local v2           #item:Lcom/neuron/mytelkom/model/HelpItem;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #object:Lorg/json/JSONObject;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .restart local v1       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .restart local v7       #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/HelpItem;>;"
    goto :goto_2
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/model/HelpItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/neuron/mytelkom/model/HelpItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/neuron/mytelkom/model/HelpItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/neuron/mytelkom/model/HelpItem;->content:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/neuron/mytelkom/model/HelpItem;->id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/neuron/mytelkom/model/HelpItem;->title:Ljava/lang/String;

    .line 33
    return-void
.end method
