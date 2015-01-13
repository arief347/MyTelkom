.class public Lcom/neuron/mytelkom/model/ConferenceItem;
.super Ljava/lang/Object;
.source "ConferenceItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field KinescopeState:Ljava/lang/String;

.field accessNumber:Ljava/lang/String;

.field autoProlong:Ljava/lang/String;

.field autoProlongTime:Ljava/lang/String;

.field calleeNeedPassword:Ljava/lang/String;

.field chargeMode:Ljava/lang/String;

.field conferenceDay:Ljava/lang/String;

.field conferenceHour:Ljava/lang/String;

.field conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;

.field conferenceMode:Ljava/lang/String;

.field conferenceState:Ljava/lang/String;

.field conferenceTime:Ljava/lang/String;

.field convergent:Ljava/lang/String;

.field dHours:Ljava/lang/String;

.field dMinutes:Ljava/lang/String;

.field duration:Ljava/lang/String;

.field durationText:Ljava/lang/String;

.field id:Ljava/lang/String;

.field isAllowInvite:Ljava/lang/String;

.field isAllowKinescope:Ljava/lang/String;

.field isAllowRecord:Ljava/lang/String;

.field isAllowVideoControl:Ljava/lang/String;

.field isAutoInvite:Ljava/lang/String;

.field isCycleType:Ljava/lang/String;

.field language:Ljava/lang/String;

.field length:Ljava/lang/String;

.field listAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceAttendees;",
            ">;"
        }
    .end annotation
.end field

.field listPasswords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferencePassword;",
            ">;"
        }
    .end annotation
.end field

.field lockState:Ljava/lang/String;

.field maxAttendee:I

.field mediaTypes:Ljava/lang/String;

.field needParticipatorLimit:Ljava/lang/String;

.field recordState:Ljava/lang/String;

.field schedusedName:Ljava/lang/String;

.field scheduserMobile:Ljava/lang/String;

.field size:Ljava/lang/String;

.field startTime:Ljava/lang/String;

.field startTimeInMilis:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field summerTime:Ljava/lang/String;

.field timezone:Ljava/lang/String;

.field typeConf:Ljava/lang/String;

.field voiceRecordState:Ljava/lang/String;

.field voiceTopicState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDetailConferenceItem(Ljava/lang/String;)Lcom/neuron/mytelkom/model/ConferenceItem;
    .locals 22
    .parameter "response"

    .prologue
    .line 416
    const/4 v8, 0x0

    .line 418
    .local v8, item:Lcom/neuron/mytelkom/model/ConferenceItem;
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v18, object:Lorg/json/JSONObject;
    const-string v20, "rescode"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "00"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 420
    new-instance v17, Lorg/json/JSONObject;

    const-string v20, "Result"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    .local v17, objRes:Lorg/json/JSONObject;
    const-string v20, "Result"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    if-eqz v17, :cond_3

    .line 422
    :cond_0
    new-instance v19, Lorg/json/JSONObject;

    const-string v20, "Result"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 423
    .local v19, objs:Lorg/json/JSONObject;
    const-string v20, "conferenceInfo"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 424
    .local v13, obj:Lorg/json/JSONObject;
    new-instance v9, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-direct {v9}, Lcom/neuron/mytelkom/model/ConferenceItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v8           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .local v9, item:Lcom/neuron/mytelkom/model/ConferenceItem;
    :try_start_1
    const-string v20, "startTime"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setStartTime(Ljava/lang/String;)V

    .line 426
    const-string v20, "timeZone"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setTimezone(Ljava/lang/String;)V

    .line 427
    const-string v20, "length"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setLength(Ljava/lang/String;)V

    .line 428
    const-string v20, "size"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSize(Ljava/lang/String;)V

    .line 429
    const-string v20, "subject"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSubject(Ljava/lang/String;)V

    .line 430
    const-string v20, "mediaTypes"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setMediaTypes(Ljava/lang/String;)V

    .line 431
    const-string v20, "isAllowVideoControl"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setIsAllowVideoControl(Ljava/lang/String;)V

    .line 432
    const-string v20, "chargeMode"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setChargeMode(Ljava/lang/String;)V

    .line 433
    const-string v20, "conferenceMode"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceMode(Ljava/lang/String;)V

    .line 434
    const-string v20, "scheduserName"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSchedusedName(Ljava/lang/String;)V

    .line 435
    const-string v20, "scheduserMobile"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setScheduserMobile(Ljava/lang/String;)V

    .line 436
    const-string v20, "conferenceState"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceState(Ljava/lang/String;)V

    .line 437
    const-string v20, "calleeNeedPassword"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setCalleeNeedPassword(Ljava/lang/String;)V

    .line 438
    const-string v20, "needParticipatorLimit"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setNeedParticipatorLimit(Ljava/lang/String;)V

    .line 439
    const-string v20, "isAllowRecord"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setIsAllowRecord(Ljava/lang/String;)V

    .line 440
    const-string v20, "recordState"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setRecordState(Ljava/lang/String;)V

    .line 441
    const-string v20, "isAllowKinescope"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setIsAllowKinescope(Ljava/lang/String;)V

    .line 442
    const-string v20, "KinescopeState"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setKinescopeState(Ljava/lang/String;)V

    .line 443
    const-string v20, "lockState"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setLockState(Ljava/lang/String;)V

    .line 444
    const-string v20, "language"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setLanguage(Ljava/lang/String;)V

    .line 445
    const-string v20, "summerTime"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSummerTime(Ljava/lang/String;)V

    .line 446
    const-string v20, "isAllowInvite"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setIsAllowInvite(Ljava/lang/String;)V

    .line 447
    const-string v20, "isAutoInvite"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setIsAutoInvite(Ljava/lang/String;)V

    .line 448
    const-string v20, "isCycleType"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setIsCycleType(Ljava/lang/String;)V

    .line 449
    const-string v20, "voiceTopicState"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setVoiceTopicState(Ljava/lang/String;)V

    .line 450
    const-string v20, "voiceRecordState"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setVoiceRecordState(Ljava/lang/String;)V

    .line 451
    const-string v20, "accessNumber"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setAccessNumber(Ljava/lang/String;)V

    .line 452
    const-string v20, "autoProlong"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setAutoProlong(Ljava/lang/String;)V

    .line 453
    const-string v20, "autoProlongTime"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setAutoProlongTime(Ljava/lang/String;)V

    .line 454
    const-string v20, "convergent"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConvergent(Ljava/lang/String;)V

    .line 455
    const-string v20, "conferenceTime"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceTime(Ljava/lang/String;)V

    .line 456
    const-string v20, "conferenceHour"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceHour(Ljava/lang/String;)V

    .line 457
    const-string v20, "conferenceDay"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceDay(Ljava/lang/String;)V

    .line 458
    const-string v20, "duration"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setDuration(Ljava/lang/String;)V

    .line 459
    const-string v20, "durationText"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->setDurationText(Ljava/lang/String;)V

    .line 461
    const-string v20, "passwords"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 462
    .local v16, objPass:Lorg/json/JSONArray;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_1

    .line 463
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v11, listPassword:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferencePassword;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    .line 473
    invoke-virtual {v9, v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->setListPasswords(Ljava/util/ArrayList;)V

    .line 476
    .end local v7           #i:I
    .end local v11           #listPassword:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferencePassword;>;"
    :cond_1
    const-string v20, "conferenceKey"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 477
    .local v15, objKey:Lorg/json/JSONObject;
    new-instance v4, Lcom/neuron/mytelkom/model/ConferenceKey;

    invoke-direct {v4}, Lcom/neuron/mytelkom/model/ConferenceKey;-><init>()V

    .line 478
    .local v4, conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;
    const-string v20, "conferenceID"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/neuron/mytelkom/model/ConferenceKey;->setConferenceId(Ljava/lang/String;)V

    .line 479
    const-string v20, "subConferenceID"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/neuron/mytelkom/model/ConferenceKey;->setSubConferenceId(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v9, v4}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceKey(Lcom/neuron/mytelkom/model/ConferenceKey;)V

    .line 483
    const-string v20, "attendees"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 484
    .local v2, arrAttendees:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 485
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v10, listAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceAttendees;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 487
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 489
    :cond_2
    const/4 v3, 0x0

    .line 490
    .local v3, conferenceAttendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_5

    .line 502
    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/ConferenceItem;->setListAttendees(Ljava/util/ArrayList;)V

    move-object v8, v9

    .line 511
    .end local v2           #arrAttendees:Lorg/json/JSONArray;
    .end local v3           #conferenceAttendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    .end local v4           #conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;
    .end local v7           #i:I
    .end local v9           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .end local v10           #listAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceAttendees;>;"
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v15           #objKey:Lorg/json/JSONObject;
    .end local v16           #objPass:Lorg/json/JSONArray;
    .end local v17           #objRes:Lorg/json/JSONObject;
    .end local v18           #object:Lorg/json/JSONObject;
    .end local v19           #objs:Lorg/json/JSONObject;
    .restart local v8       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    :cond_3
    :goto_2
    return-object v8

    .line 465
    .end local v8           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v7       #i:I
    .restart local v9       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v11       #listPassword:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferencePassword;>;"
    .restart local v13       #obj:Lorg/json/JSONObject;
    .restart local v16       #objPass:Lorg/json/JSONArray;
    .restart local v17       #objRes:Lorg/json/JSONObject;
    .restart local v18       #object:Lorg/json/JSONObject;
    .restart local v19       #objs:Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 466
    .local v12, oPass:Lorg/json/JSONObject;
    new-instance v5, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-direct {v5}, Lcom/neuron/mytelkom/model/ConferencePassword;-><init>()V

    .line 467
    .local v5, conferencePassword:Lcom/neuron/mytelkom/model/ConferencePassword;
    const-string v20, "conferenceRole"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/neuron/mytelkom/model/ConferencePassword;->setConferenceRole(Ljava/lang/String;)V

    .line 468
    const-string v20, "password"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/neuron/mytelkom/model/ConferencePassword;->setPassword(Ljava/lang/String;)V

    .line 469
    const-string v20, "autoMake"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/neuron/mytelkom/model/ConferencePassword;->setAutoMake(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 491
    .end local v5           #conferencePassword:Lcom/neuron/mytelkom/model/ConferencePassword;
    .end local v11           #listPassword:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferencePassword;>;"
    .end local v12           #oPass:Lorg/json/JSONObject;
    .restart local v2       #arrAttendees:Lorg/json/JSONArray;
    .restart local v3       #conferenceAttendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    .restart local v4       #conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;
    .restart local v10       #listAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceAttendees;>;"
    .restart local v15       #objKey:Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 492
    .local v14, objAttendee:Lorg/json/JSONObject;
    new-instance v3, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    .end local v3           #conferenceAttendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    invoke-direct {v3}, Lcom/neuron/mytelkom/model/ConferenceAttendees;-><init>()V

    .line 493
    .restart local v3       #conferenceAttendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    const-string v20, "attendeeName"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setName(Ljava/lang/String;)V

    .line 494
    const-string v20, "addressEntry"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "address"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setEmail(Ljava/lang/String;)V

    .line 495
    const-string v20, "addressEntry"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "address"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setPhone(Ljava/lang/String;)V

    .line 496
    const-string v20, "conferenceRole"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setRegionId(Ljava/lang/String;)V

    .line 497
    const-string v20, "conferenceRole"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setRole(Ljava/lang/String;)V

    .line 498
    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->setType(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 507
    .end local v2           #arrAttendees:Lorg/json/JSONArray;
    .end local v3           #conferenceAttendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    .end local v4           #conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;
    .end local v7           #i:I
    .end local v9           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .end local v10           #listAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceAttendees;>;"
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v14           #objAttendee:Lorg/json/JSONObject;
    .end local v15           #objKey:Lorg/json/JSONObject;
    .end local v16           #objPass:Lorg/json/JSONArray;
    .end local v17           #objRes:Lorg/json/JSONObject;
    .end local v18           #object:Lorg/json/JSONObject;
    .end local v19           #objs:Lorg/json/JSONObject;
    .restart local v8       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    :catch_0
    move-exception v6

    .line 509
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 507
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v9       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v13       #obj:Lorg/json/JSONObject;
    .restart local v17       #objRes:Lorg/json/JSONObject;
    .restart local v18       #object:Lorg/json/JSONObject;
    .restart local v19       #objs:Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v8       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    goto :goto_3

    .end local v8           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v2       #arrAttendees:Lorg/json/JSONArray;
    .restart local v4       #conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;
    .restart local v9       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v15       #objKey:Lorg/json/JSONObject;
    .restart local v16       #objPass:Lorg/json/JSONArray;
    :cond_6
    move-object v8, v9

    .end local v9           #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v8       #item:Lcom/neuron/mytelkom/model/ConferenceItem;
    goto/16 :goto_2
.end method

.method public static getListConference(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    const/4 v4, 0x0

    .line 386
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    .local v8, object:Lorg/json/JSONObject;
    const-string v9, "rescode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 388
    new-instance v7, Lorg/json/JSONObject;

    const-string v9, "Result"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    .local v7, objRes:Lorg/json/JSONObject;
    const-string v9, "Result"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "null"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v7, :cond_1

    .line 390
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    const/4 v0, 0x0

    .line 392
    .local v0, conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    const-string v9, "Result"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 393
    .local v3, item:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_2

    move-object v4, v5

    .line 412
    .end local v0           #conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    .end local v2           #i:I
    .end local v3           #item:Lorg/json/JSONArray;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .end local v7           #objRes:Lorg/json/JSONObject;
    .end local v8           #object:Lorg/json/JSONObject;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    :cond_1
    :goto_1
    return-object v4

    .line 394
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .restart local v0       #conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    .restart local v2       #i:I
    .restart local v3       #item:Lorg/json/JSONArray;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .restart local v7       #objRes:Lorg/json/JSONObject;
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_2
    new-instance v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    .end local v0           #conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    invoke-direct {v0}, Lcom/neuron/mytelkom/model/ConferenceItem;-><init>()V

    .line 395
    .restart local v0       #conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 397
    .local v6, objItem:Lorg/json/JSONObject;
    const-string v9, "conferenceState"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceState(Ljava/lang/String;)V

    .line 398
    const-string v9, "conferenceID"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/ConferenceItem;->setId(Ljava/lang/String;)V

    .line 399
    const-string v9, "scheduserName"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSchedusedName(Ljava/lang/String;)V

    .line 400
    const-string v9, "startTime"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/ConferenceItem;->setStartTime(Ljava/lang/String;)V

    .line 401
    const-string v9, "subject"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSubject(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v0           #conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    .end local v2           #i:I
    .end local v3           #item:Lorg/json/JSONArray;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .end local v6           #objItem:Lorg/json/JSONObject;
    .end local v7           #objRes:Lorg/json/JSONObject;
    .end local v8           #object:Lorg/json/JSONObject;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .restart local v7       #objRes:Lorg/json/JSONObject;
    .restart local v8       #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceItem;>;"
    goto :goto_2
.end method


# virtual methods
.method public getAccessNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->accessNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoProlong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->autoProlong:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoProlongTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->autoProlongTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeNeedPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->calleeNeedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->chargeMode:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceDay:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceHour:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;

    return-object v0
.end method

.method public getConferenceMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceState:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConvergent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->convergent:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->durationText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllowInvite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowInvite:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllowKinescope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowKinescope:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllowRecord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowRecord:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllowVideoControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowVideoControl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAutoInvite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAutoInvite:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCycleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isCycleType:Ljava/lang/String;

    return-object v0
.end method

.method public getKinescopeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->KinescopeState:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->length:Ljava/lang/String;

    return-object v0
.end method

.method public getListAttendees()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceAttendees;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->listAttendees:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getListPasswords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferencePassword;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->listPasswords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLockState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->lockState:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAttendee()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->maxAttendee:I

    return v0
.end method

.method public getMediaTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->mediaTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedParticipatorLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->needParticipatorLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->recordState:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedusedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->schedusedName:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduserMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->scheduserMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeInMilis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->startTimeInMilis:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSummerTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->summerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeConf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->typeConf:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRecordState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->voiceRecordState:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceTopicState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->voiceTopicState:Ljava/lang/String;

    return-object v0
.end method

.method public getdHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->dHours:Ljava/lang/String;

    return-object v0
.end method

.method public getdMinutes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->dMinutes:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "accessNumber"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->accessNumber:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setAutoProlong(Ljava/lang/String;)V
    .locals 0
    .parameter "autoProlong"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->autoProlong:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setAutoProlongTime(Ljava/lang/String;)V
    .locals 0
    .parameter "autoProlongTime"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->autoProlongTime:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setCalleeNeedPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "calleeNeedPassword"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->calleeNeedPassword:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setChargeMode(Ljava/lang/String;)V
    .locals 0
    .parameter "chargeMode"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->chargeMode:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setConferenceDay(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceDay"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceDay:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setConferenceHour(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceHour"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceHour:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setConferenceKey(Lcom/neuron/mytelkom/model/ConferenceKey;)V
    .locals 0
    .parameter "conferenceKey"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceKey:Lcom/neuron/mytelkom/model/ConferenceKey;

    .line 333
    return-void
.end method

.method public setConferenceMode(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceMode"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceMode:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setConferenceState(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceState"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceState:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setConferenceTime(Ljava/lang/String;)V
    .locals 0
    .parameter "conferenceTime"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->conferenceTime:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setConvergent(Ljava/lang/String;)V
    .locals 0
    .parameter "convergent"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->convergent:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->duration:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 0
    .parameter "durationText"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->durationText:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->id:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setIsAllowInvite(Ljava/lang/String;)V
    .locals 0
    .parameter "isAllowInvite"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowInvite:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setIsAllowKinescope(Ljava/lang/String;)V
    .locals 0
    .parameter "isAllowKinescope"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowKinescope:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setIsAllowRecord(Ljava/lang/String;)V
    .locals 0
    .parameter "isAllowRecord"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowRecord:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setIsAllowVideoControl(Ljava/lang/String;)V
    .locals 0
    .parameter "isAllowVideoControl"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAllowVideoControl:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setIsAutoInvite(Ljava/lang/String;)V
    .locals 0
    .parameter "isAutoInvite"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isAutoInvite:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setIsCycleType(Ljava/lang/String;)V
    .locals 0
    .parameter "isCycleType"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->isCycleType:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setKinescopeState(Ljava/lang/String;)V
    .locals 0
    .parameter "kinescopeState"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->KinescopeState:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->language:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 0
    .parameter "length"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->length:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setListAttendees(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceAttendees;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, listAttendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferenceAttendees;>;"
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->listAttendees:Ljava/util/ArrayList;

    .line 325
    return-void
.end method

.method public setListPasswords(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferencePassword;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, listPasswords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/ConferencePassword;>;"
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->listPasswords:Ljava/util/ArrayList;

    .line 341
    return-void
.end method

.method public setLockState(Ljava/lang/String;)V
    .locals 0
    .parameter "lockState"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->lockState:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setMaxAttendee(I)V
    .locals 0
    .parameter "maxAttendee"

    .prologue
    .line 56
    iput p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->maxAttendee:I

    .line 57
    return-void
.end method

.method public setMediaTypes(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaTypes"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->mediaTypes:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNeedParticipatorLimit(Ljava/lang/String;)V
    .locals 0
    .parameter "needParticipatorLimit"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->needParticipatorLimit:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setRecordState(Ljava/lang/String;)V
    .locals 0
    .parameter "recordState"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->recordState:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setSchedusedName(Ljava/lang/String;)V
    .locals 0
    .parameter "schedusedName"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->schedusedName:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setScheduserMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "scheduserMobile"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->scheduserMobile:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->size:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->startTime:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setStartTimeInMilis(Ljava/lang/String;)V
    .locals 0
    .parameter "startTimeInMilis"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->startTimeInMilis:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->subject:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setSummerTime(Ljava/lang/String;)V
    .locals 0
    .parameter "summerTime"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->summerTime:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .parameter "timezone"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->timezone:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTypeConf(Ljava/lang/String;)V
    .locals 0
    .parameter "typeConf"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->typeConf:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setVoiceRecordState(Ljava/lang/String;)V
    .locals 0
    .parameter "voiceRecordState"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->voiceRecordState:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setVoiceTopicState(Ljava/lang/String;)V
    .locals 0
    .parameter "voiceTopicState"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->voiceTopicState:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setdHours(Ljava/lang/String;)V
    .locals 0
    .parameter "dHours"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->dHours:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setdMinutes(Ljava/lang/String;)V
    .locals 0
    .parameter "dMinutes"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceItem;->dMinutes:Ljava/lang/String;

    .line 49
    return-void
.end method
