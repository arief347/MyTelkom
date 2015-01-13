.class public Lcom/neuron/mytelkom/model/ImeiItem;
.super Ljava/lang/Object;
.source "ImeiItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x568cff9d022ca595L


# instance fields
.field adminreg:Ljava/lang/String;

.field encryptedValidation:Ljava/lang/String;

.field productDesc:Ljava/lang/String;

.field productNo:Ljava/lang/String;

.field productPackage:Ljava/lang/String;

.field productType:Ljava/lang/String;

.field regdate:Ljava/lang/String;

.field relation:Ljava/lang/String;

.field status:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListImeItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ImeiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v6, 0x0

    .line 104
    .local v6, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 106
    const-string v10, "statusCode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;
    new-instance v3, Lorg/json/JSONObject;

    const-string v9, "result"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Result"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, imeObject:Lorg/json/JSONObject;
    const-string v9, "IME"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 111
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v6           #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    .local v7, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_1

    move-object v6, v7

    .line 136
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #imeObject:Lorg/json/JSONObject;
    .end local v4           #imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    .restart local v6       #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    :cond_0
    :goto_1
    return-object v6

    .line 114
    .end local v6           #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #imeObject:Lorg/json/JSONObject;
    .restart local v4       #imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 115
    .local v8, object:Lorg/json/JSONObject;
    new-instance v4, Lcom/neuron/mytelkom/model/ImeiItem;

    .end local v4           #imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;
    invoke-direct {v4}, Lcom/neuron/mytelkom/model/ImeiItem;-><init>()V

    .line 116
    .restart local v4       #imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;
    const-string v9, "product_no"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setProductNo(Ljava/lang/String;)V

    .line 117
    const-string v9, "product_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setProductType(Ljava/lang/String;)V

    .line 118
    const-string v9, "product_package"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setProductPackage(Ljava/lang/String;)V

    .line 119
    const-string v9, "uid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setUid(Ljava/lang/String;)V

    .line 120
    const-string v9, "status"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setStatus(Ljava/lang/String;)V

    .line 121
    const-string v9, "relation"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setRelation(Ljava/lang/String;)V

    .line 122
    const-string v9, "regdate"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setRegdate(Ljava/lang/String;)V

    .line 123
    const-string v9, "adminreg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setAdminreg(Ljava/lang/String;)V

    .line 124
    const-string v9, "adminreg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setEncryptedValidation(Ljava/lang/String;)V

    .line 125
    const-string v9, "product_desc"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/neuron/mytelkom/model/ImeiItem;->setProductDesc(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #imeObject:Lorg/json/JSONObject;
    .end local v4           #imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    .end local v8           #object:Lorg/json/JSONObject;
    .restart local v6       #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #imeObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7           #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    .restart local v6       #listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ImeiItem;>;"
    goto :goto_2
.end method


# virtual methods
.method public getAdminreg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->adminreg:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedValidation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->encryptedValidation:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productNo:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public getRegdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->regdate:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->relation:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ImeiItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminreg(Ljava/lang/String;)V
    .locals 0
    .parameter "adminreg"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->adminreg:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setEncryptedValidation(Ljava/lang/String;)V
    .locals 0
    .parameter "encryptedValidation"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->encryptedValidation:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "productDesc"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productDesc:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setProductNo(Ljava/lang/String;)V
    .locals 0
    .parameter "productNo"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productNo:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setProductPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "productPackage"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productPackage:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0
    .parameter "productType"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->productType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setRegdate(Ljava/lang/String;)V
    .locals 0
    .parameter "regdate"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->regdate:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setRelation(Ljava/lang/String;)V
    .locals 0
    .parameter "relation"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->relation:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->status:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ImeiItem;->uid:Ljava/lang/String;

    .line 51
    return-void
.end method
