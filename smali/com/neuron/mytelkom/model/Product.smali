.class public Lcom/neuron/mytelkom/model/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field adminReg:Ljava/lang/String;

.field amount:Ljava/lang/String;

.field cicilan:Ljava/lang/String;

.field curency:Ljava/lang/String;

.field customer:Lcom/neuron/mytelkom/model/Customer;

.field date:Ljava/lang/String;

.field encryptedValidation:Ljava/lang/String;

.field fastel:Ljava/lang/String;

.field listPstnDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/PstnDetailSummary;",
            ">;"
        }
    .end annotation
.end field

.field location:Ljava/lang/String;

.field paymentdate:Ljava/lang/String;

.field paytmenttime:Ljava/lang/String;

.field period:Ljava/lang/String;

.field productDesc:Ljava/lang/String;

.field productNo:Ljava/lang/String;

.field productPackage:Ljava/lang/String;

.field productType:Ljava/lang/String;

.field regDate:Ljava/lang/String;

.field relation:Ljava/lang/String;

.field segmentasi:Ljava/lang/String;

.field status:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlexiDetailProduct(Ljava/lang/String;)Lcom/neuron/mytelkom/model/Product;
    .locals 19
    .parameter "response"

    .prologue
    .line 403
    const/4 v13, 0x0

    .line 405
    .local v13, product:Lcom/neuron/mytelkom/model/Product;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v12, object:Lorg/json/JSONObject;
    const-string v17, "result"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "statusCode"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 407
    const-string v18, "00"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 409
    const-string v17, "result"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "Result"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 411
    .local v16, result:Lorg/json/JSONObject;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 412
    new-instance v14, Lcom/neuron/mytelkom/model/Product;

    invoke-direct {v14}, Lcom/neuron/mytelkom/model/Product;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    .end local v13           #product:Lcom/neuron/mytelkom/model/Product;
    .local v14, product:Lcom/neuron/mytelkom/model/Product;
    :try_start_1
    const-string v17, "PSTN"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 415
    .local v10, obj:Lorg/json/JSONObject;
    new-instance v13, Lcom/neuron/mytelkom/model/Product;

    invoke-direct {v13}, Lcom/neuron/mytelkom/model/Product;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 416
    .end local v14           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v13       #product:Lcom/neuron/mytelkom/model/Product;
    :try_start_2
    const-string v17, "period"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setPeriod(Ljava/lang/String;)V

    .line 417
    const-string v17, "curancy"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setCurency(Ljava/lang/String;)V

    .line 418
    const-string v17, "amount"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setAmount(Ljava/lang/String;)V

    .line 419
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setStatus(Ljava/lang/String;)V

    .line 420
    const-string v17, "cicilan"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setCicilan(Ljava/lang/String;)V

    .line 421
    const-string v17, "location"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setLocation(Ljava/lang/String;)V

    .line 422
    const-string v17, "paymentdate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setPaymentdate(Ljava/lang/String;)V

    .line 423
    const-string v17, "paymenttime"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setPaytmenttime(Ljava/lang/String;)V

    .line 425
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    const-string v17, "detailsummary"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 430
    .local v7, jsons:Ljava/lang/String;
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    .local v6, json:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 434
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 436
    .local v15, pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_2

    .line 463
    :cond_0
    invoke-virtual {v13, v9}, Lcom/neuron/mytelkom/model/Product;->setListPstnDetails(Ljava/util/ArrayList;)V

    .line 465
    const-string v17, "customer"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 467
    .local v11, objCustomer:Lorg/json/JSONObject;
    new-instance v1, Lcom/neuron/mytelkom/model/Customer;

    invoke-direct {v1}, Lcom/neuron/mytelkom/model/Customer;-><init>()V

    .line 468
    .local v1, customer:Lcom/neuron/mytelkom/model/Customer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/model/Customer;->setName(Ljava/lang/String;)V

    .line 469
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/model/Customer;->setAddress(Ljava/lang/String;)V

    .line 470
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "comercial"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/model/Customer;->setComercial(Ljava/lang/String;)V

    .line 471
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "location"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/model/Customer;->setLocation(Ljava/lang/String;)V

    .line 472
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "paymentdate"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/model/Customer;->setPaymentDate(Ljava/lang/String;)V

    .line 473
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "paymenttime"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/model/Customer;->setPaymentTime(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v13, v1}, Lcom/neuron/mytelkom/model/Product;->setCustomer(Lcom/neuron/mytelkom/model/Customer;)V

    .line 477
    const-string v17, "fastel"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setFastel(Ljava/lang/String;)V

    .line 478
    const-string v17, "segmentasi"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/neuron/mytelkom/model/Product;->setSegmentasi(Ljava/lang/String;)V

    .line 492
    .end local v1           #customer:Lcom/neuron/mytelkom/model/Customer;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v7           #jsons:Ljava/lang/String;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    .end local v10           #obj:Lorg/json/JSONObject;
    .end local v11           #objCustomer:Lorg/json/JSONObject;
    .end local v12           #object:Lorg/json/JSONObject;
    .end local v15           #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    .end local v16           #result:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v13

    .line 438
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6       #json:Lorg/json/JSONObject;
    .restart local v7       #jsons:Ljava/lang/String;
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    .restart local v10       #obj:Lorg/json/JSONObject;
    .restart local v12       #object:Lorg/json/JSONObject;
    .restart local v15       #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    .restart local v16       #result:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 439
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 440
    .local v5, item:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 443
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    .local v2, detSumObj:Lorg/json/JSONObject;
    new-instance v15, Lcom/neuron/mytelkom/model/PstnDetailSummary;

    .end local v15           #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    invoke-direct {v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;-><init>()V

    .line 447
    .restart local v15       #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "paymenttime"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setTime(Ljava/lang/String;)V

    .line 448
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "paymentdate"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setDate(Ljava/lang/String;)V

    .line 449
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "duedate"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setDuedate(Ljava/lang/String;)V

    .line 450
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "paymentlocation"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setLocation(Ljava/lang/String;)V

    .line 451
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setStatus(Ljava/lang/String;)V

    .line 452
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "amount"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setNamount(Ljava/lang/String;)V

    .line 453
    const-string v17, "curency"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setCurrency(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 480
    .end local v2           #detSumObj:Lorg/json/JSONObject;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #item:Ljava/lang/Object;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v8           #key:Ljava/lang/String;
    .end local v15           #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    :catch_0
    move-exception v3

    .line 482
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v17, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 483
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 487
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #jsons:Ljava/lang/String;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    .end local v10           #obj:Lorg/json/JSONObject;
    .end local v12           #object:Lorg/json/JSONObject;
    .end local v16           #result:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 489
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_2
    sget-object v17, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 487
    .end local v3           #e:Ljava/lang/Exception;
    .end local v13           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v12       #object:Lorg/json/JSONObject;
    .restart local v14       #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v16       #result:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    move-object v13, v14

    .end local v14           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v13       #product:Lcom/neuron/mytelkom/model/Product;
    goto :goto_2
.end method

.method public static getListProduct(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "response"
    .parameter "productType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/neuron/mytelkom/model/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v3, 0x0

    .line 212
    .local v3, listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "statusCode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 214
    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    new-instance v5, Lorg/json/JSONObject;

    const-string v9, "result"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 216
    const-string v10, "Result"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 215
    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v5, object:Lorg/json/JSONObject;
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 220
    .local v8, productArray:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v3           #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .local v4, listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    const/4 v7, 0x0

    .line 222
    .local v7, product:Lcom/neuron/mytelkom/model/Product;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_1

    move-object v3, v4

    .line 245
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v7           #product:Lcom/neuron/mytelkom/model/Product;
    .end local v8           #productArray:Lorg/json/JSONArray;
    .restart local v3       #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    :cond_0
    :goto_1
    return-object v3

    .line 223
    .end local v3           #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .restart local v1       #i:I
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .restart local v5       #object:Lorg/json/JSONObject;
    .restart local v7       #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v8       #productArray:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 224
    .local v6, prdObj:Lorg/json/JSONObject;
    new-instance v7, Lcom/neuron/mytelkom/model/Product;

    .end local v7           #product:Lcom/neuron/mytelkom/model/Product;
    invoke-direct {v7}, Lcom/neuron/mytelkom/model/Product;-><init>()V

    .line 225
    .restart local v7       #product:Lcom/neuron/mytelkom/model/Product;
    const-string v9, "product_no"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setProductNo(Ljava/lang/String;)V

    .line 226
    const-string v9, "product_type"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setProductType(Ljava/lang/String;)V

    .line 227
    const-string v9, "product_package"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setProductPackage(Ljava/lang/String;)V

    .line 228
    const-string v9, "uid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setUid(Ljava/lang/String;)V

    .line 229
    const-string v9, "status"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setStatus(Ljava/lang/String;)V

    .line 230
    const-string v9, "relation"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setRelation(Ljava/lang/String;)V

    .line 231
    const-string v9, "regdate"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setRegDate(Ljava/lang/String;)V

    .line 232
    const-string v9, "adminreg"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setAdminReg(Ljava/lang/String;)V

    .line 233
    const-string v9, "encrypted_validation"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setEncryptedValidation(Ljava/lang/String;)V

    .line 234
    const-string v9, "product_desc"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/neuron/mytelkom/model/Product;->setProductDesc(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v6           #prdObj:Lorg/json/JSONObject;
    .end local v7           #product:Lcom/neuron/mytelkom/model/Product;
    .end local v8           #productArray:Lorg/json/JSONArray;
    .restart local v3       #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 242
    const/4 v3, 0x0

    goto :goto_1

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .restart local v1       #i:I
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .restart local v5       #object:Lorg/json/JSONObject;
    .restart local v8       #productArray:Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    .restart local v3       #listProduct:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Product;>;"
    goto :goto_2
.end method

.method public static getPstnDetailProduct(Ljava/lang/String;)Lcom/neuron/mytelkom/model/Product;
    .locals 17
    .parameter "response"

    .prologue
    .line 291
    const/4 v11, 0x0

    .line 293
    .local v11, product:Lcom/neuron/mytelkom/model/Product;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .local v10, object:Lorg/json/JSONObject;
    const-string v15, "result"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "statusCode"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 295
    const-string v16, "00"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 297
    const-string v15, "result"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "Result"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 299
    .local v14, result:Lorg/json/JSONObject;
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 300
    new-instance v12, Lcom/neuron/mytelkom/model/Product;

    invoke-direct {v12}, Lcom/neuron/mytelkom/model/Product;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    .end local v11           #product:Lcom/neuron/mytelkom/model/Product;
    .local v12, product:Lcom/neuron/mytelkom/model/Product;
    :try_start_1
    const-string v15, "PSTN"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 303
    .local v8, obj:Lorg/json/JSONObject;
    new-instance v11, Lcom/neuron/mytelkom/model/Product;

    invoke-direct {v11}, Lcom/neuron/mytelkom/model/Product;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 304
    .end local v12           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v11       #product:Lcom/neuron/mytelkom/model/Product;
    :try_start_2
    const-string v15, "period"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setPeriod(Ljava/lang/String;)V

    .line 305
    const-string v15, "curancy"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setCurency(Ljava/lang/String;)V

    .line 306
    const-string v15, "amount"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setAmount(Ljava/lang/String;)V

    .line 307
    const-string v15, "status"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setStatus(Ljava/lang/String;)V

    .line 308
    const-string v15, "cicilan"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setCicilan(Ljava/lang/String;)V

    .line 309
    const-string v15, "location"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setLocation(Ljava/lang/String;)V

    .line 310
    const-string v15, "paymentdate"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setPaymentdate(Ljava/lang/String;)V

    .line 311
    const-string v15, "paymenttime"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setPaytmenttime(Ljava/lang/String;)V

    .line 313
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    const-string v15, "detailsummary"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 353
    .local v6, jsons:Ljava/lang/String;
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, arrDetails:Lorg/json/JSONArray;
    const/4 v13, 0x0

    .line 355
    .local v13, pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v5, v15, :cond_1

    .line 370
    invoke-virtual {v11, v7}, Lcom/neuron/mytelkom/model/Product;->setListPstnDetails(Ljava/util/ArrayList;)V

    .line 372
    const-string v15, "customer"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 374
    .local v9, objCustomer:Lorg/json/JSONObject;
    new-instance v2, Lcom/neuron/mytelkom/model/Customer;

    invoke-direct {v2}, Lcom/neuron/mytelkom/model/Customer;-><init>()V

    .line 375
    .local v2, customer:Lcom/neuron/mytelkom/model/Customer;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/neuron/mytelkom/model/Customer;->setName(Ljava/lang/String;)V

    .line 376
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/neuron/mytelkom/model/Customer;->setAddress(Ljava/lang/String;)V

    .line 377
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "comercial"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/neuron/mytelkom/model/Customer;->setComercial(Ljava/lang/String;)V

    .line 378
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "location"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/neuron/mytelkom/model/Customer;->setLocation(Ljava/lang/String;)V

    .line 379
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "paymentdate"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/neuron/mytelkom/model/Customer;->setPaymentDate(Ljava/lang/String;)V

    .line 380
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "paymenttime"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/neuron/mytelkom/model/Customer;->setPaymentTime(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v11, v2}, Lcom/neuron/mytelkom/model/Product;->setCustomer(Lcom/neuron/mytelkom/model/Customer;)V

    .line 384
    const-string v15, "fastel"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setFastel(Ljava/lang/String;)V

    .line 385
    const-string v15, "segmentasi"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/neuron/mytelkom/model/Product;->setSegmentasi(Ljava/lang/String;)V

    .line 399
    .end local v1           #arrDetails:Lorg/json/JSONArray;
    .end local v2           #customer:Lcom/neuron/mytelkom/model/Customer;
    .end local v5           #i:I
    .end local v6           #jsons:Ljava/lang/String;
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    .end local v8           #obj:Lorg/json/JSONObject;
    .end local v9           #objCustomer:Lorg/json/JSONObject;
    .end local v10           #object:Lorg/json/JSONObject;
    .end local v13           #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    .end local v14           #result:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v11

    .line 356
    .restart local v1       #arrDetails:Lorg/json/JSONArray;
    .restart local v5       #i:I
    .restart local v6       #jsons:Ljava/lang/String;
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    .restart local v8       #obj:Lorg/json/JSONObject;
    .restart local v10       #object:Lorg/json/JSONObject;
    .restart local v13       #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    .restart local v14       #result:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 357
    .local v3, detSumObj:Lorg/json/JSONObject;
    new-instance v13, Lcom/neuron/mytelkom/model/PstnDetailSummary;

    .end local v13           #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    invoke-direct {v13}, Lcom/neuron/mytelkom/model/PstnDetailSummary;-><init>()V

    .line 358
    .restart local v13       #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    const-string v15, "paymenttime"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setTime(Ljava/lang/String;)V

    .line 359
    const-string v15, "paymentdate"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setDate(Ljava/lang/String;)V

    .line 360
    const-string v15, "duedate"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setDuedate(Ljava/lang/String;)V

    .line 361
    const-string v15, "paymentlocation"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setLocation(Ljava/lang/String;)V

    .line 362
    const-string v15, "status"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setStatus(Ljava/lang/String;)V

    .line 363
    const-string v15, "amount"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setNamount(Ljava/lang/String;)V

    .line 364
    const-string v15, "curency"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setCurrency(Ljava/lang/String;)V

    .line 365
    const-string v15, "installment"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->setInstallment(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 387
    .end local v1           #arrDetails:Lorg/json/JSONArray;
    .end local v3           #detSumObj:Lorg/json/JSONObject;
    .end local v5           #i:I
    .end local v13           #pstnDetailSummary:Lcom/neuron/mytelkom/model/PstnDetailSummary;
    :catch_0
    move-exception v4

    .line 389
    .local v4, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v15, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 390
    const/4 v11, 0x0

    goto :goto_1

    .line 394
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #jsons:Ljava/lang/String;
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    .end local v8           #obj:Lorg/json/JSONObject;
    .end local v10           #object:Lorg/json/JSONObject;
    .end local v14           #result:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 396
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_2
    sget-object v15, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    .end local v4           #e:Ljava/lang/Exception;
    .end local v11           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v10       #object:Lorg/json/JSONObject;
    .restart local v12       #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v14       #result:Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    move-object v11, v12

    .end local v12           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v11       #product:Lcom/neuron/mytelkom/model/Product;
    goto :goto_2
.end method

.method public static final getSpeedyDetail(Ljava/lang/String;)Lcom/neuron/mytelkom/model/Product;
    .locals 11
    .parameter "response"

    .prologue
    .line 249
    const/4 v5, 0x0

    .line 252
    .local v5, product:Lcom/neuron/mytelkom/model/Product;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v4, object:Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "statusCode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 254
    const-string v9, "result"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Result"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, result:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v8, speedyObj:Lorg/json/JSONObject;
    const-string v9, "Speedy"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 257
    .local v2, obj:Lorg/json/JSONObject;
    new-instance v6, Lcom/neuron/mytelkom/model/Product;

    invoke-direct {v6}, Lcom/neuron/mytelkom/model/Product;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v5           #product:Lcom/neuron/mytelkom/model/Product;
    .local v6, product:Lcom/neuron/mytelkom/model/Product;
    :try_start_1
    const-string v9, "period"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setPeriod(Ljava/lang/String;)V

    .line 259
    const-string v9, "curancy"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setCurency(Ljava/lang/String;)V

    .line 260
    const-string v9, "amount"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setAmount(Ljava/lang/String;)V

    .line 261
    const-string v9, "status"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setStatus(Ljava/lang/String;)V

    .line 262
    const-string v9, "cicilan"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setCicilan(Ljava/lang/String;)V

    .line 263
    const-string v9, "location"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setLocation(Ljava/lang/String;)V

    .line 264
    const-string v9, "paymentdate"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setPaymentdate(Ljava/lang/String;)V

    .line 265
    const-string v9, "paymenttime"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setPaytmenttime(Ljava/lang/String;)V

    .line 267
    const-string v9, "customer"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 269
    .local v3, objCustomer:Lorg/json/JSONObject;
    new-instance v0, Lcom/neuron/mytelkom/model/Customer;

    invoke-direct {v0}, Lcom/neuron/mytelkom/model/Customer;-><init>()V

    .line 270
    .local v0, customer:Lcom/neuron/mytelkom/model/Customer;
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/Customer;->setName(Ljava/lang/String;)V

    .line 271
    const-string v9, "address"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/Customer;->setAddress(Ljava/lang/String;)V

    .line 272
    const-string v9, "comercial"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/Customer;->setComercial(Ljava/lang/String;)V

    .line 273
    const-string v9, "location"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/Customer;->setLocation(Ljava/lang/String;)V

    .line 274
    const-string v9, "paymentdate"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/Customer;->setPaymentDate(Ljava/lang/String;)V

    .line 275
    const-string v9, "paymenttime"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/Customer;->setPaymentTime(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v6, v0}, Lcom/neuron/mytelkom/model/Product;->setCustomer(Lcom/neuron/mytelkom/model/Customer;)V

    .line 279
    const-string v9, "fastel"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setFastel(Ljava/lang/String;)V

    .line 280
    const-string v9, "segmentasi"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/neuron/mytelkom/model/Product;->setSegmentasi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 287
    .end local v0           #customer:Lcom/neuron/mytelkom/model/Customer;
    .end local v2           #obj:Lorg/json/JSONObject;
    .end local v3           #objCustomer:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v6           #product:Lcom/neuron/mytelkom/model/Product;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #speedyObj:Lorg/json/JSONObject;
    .restart local v5       #product:Lcom/neuron/mytelkom/model/Product;
    :cond_0
    :goto_0
    return-object v5

    .line 282
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    sget-object v9, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v2       #obj:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    .restart local v6       #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v7       #result:Ljava/lang/String;
    .restart local v8       #speedyObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #product:Lcom/neuron/mytelkom/model/Product;
    .restart local v5       #product:Lcom/neuron/mytelkom/model/Product;
    goto :goto_1
.end method


# virtual methods
.method public getAdminReg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->adminReg:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCicilan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->cicilan:Ljava/lang/String;

    return-object v0
.end method

.method public getCurency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->curency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer()Lcom/neuron/mytelkom/model/Customer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->customer:Lcom/neuron/mytelkom/model/Customer;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedValidation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->encryptedValidation:Ljava/lang/String;

    return-object v0
.end method

.method public getFastel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->fastel:Ljava/lang/String;

    return-object v0
.end method

.method public getListPstnDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/PstnDetailSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->listPstnDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->paymentdate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaytmenttime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->paytmenttime:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->productNo:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->productPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->relation:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentasi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->segmentasi:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Product;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminReg(Ljava/lang/String;)V
    .locals 0
    .parameter "adminReg"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->adminReg:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->amount:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCicilan(Ljava/lang/String;)V
    .locals 0
    .parameter "cicilan"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->cicilan:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCurency(Ljava/lang/String;)V
    .locals 0
    .parameter "curency"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->curency:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCustomer(Lcom/neuron/mytelkom/model/Customer;)V
    .locals 0
    .parameter "customer"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->customer:Lcom/neuron/mytelkom/model/Customer;

    .line 46
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->date:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setEncryptedValidation(Ljava/lang/String;)V
    .locals 0
    .parameter "encryptedValidation"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->encryptedValidation:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setFastel(Ljava/lang/String;)V
    .locals 0
    .parameter "fastel"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->fastel:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setListPstnDetails(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/PstnDetailSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, listPstnDetails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/PstnDetailSummary;>;"
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->listPstnDetails:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->location:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPaymentdate(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentdate"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->paymentdate:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPaytmenttime(Ljava/lang/String;)V
    .locals 0
    .parameter "paytmenttime"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->paytmenttime:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0
    .parameter "period"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->period:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "productDesc"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->productDesc:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setProductNo(Ljava/lang/String;)V
    .locals 0
    .parameter "productNo"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->productNo:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setProductPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "productPackage"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->productPackage:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0
    .parameter "productType"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->productType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 0
    .parameter "regDate"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->regDate:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setRelation(Ljava/lang/String;)V
    .locals 0
    .parameter "relation"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->relation:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setSegmentasi(Ljava/lang/String;)V
    .locals 0
    .parameter "segmentasi"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->segmentasi:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->status:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Product;->uid:Ljava/lang/String;

    .line 158
    return-void
.end method
