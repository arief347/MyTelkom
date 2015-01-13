.class public Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "CreateNewConferenceParticipantActivity.java"


# static fields
.field public static ADD_PARTICIPANT_REQUEST_CODE:I

.field public static ADD_PARTICIPANT_RESULT_CODE:I

.field public static CONF_ITEM:Ljava/lang/String;

.field public static DELETE_PARTICIPANT_RESULT_CODE:I

.field public static DELET_USER:Ljava/lang/String;

.field public static EDIT_PARTICIPANT_RESULT_CODE:I

.field public static EDIT_USER:Ljava/lang/String;

.field public static NEW_USER:Ljava/lang/String;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSubmit:Landroid/widget/Button;

.field private conferenceAddedItemAdapter:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;

.field conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

.field flag:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

.field private isModify:Z

.field private listUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceAttendees;",
            ">;"
        }
    .end annotation
.end field

.field private lvParticipant:Landroid/widget/ListView;

.field private txtEmpty:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x64

    sput v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->ADD_PARTICIPANT_REQUEST_CODE:I

    .line 44
    const/16 v0, 0x6e

    sput v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->ADD_PARTICIPANT_RESULT_CODE:I

    .line 45
    const/16 v0, 0x82

    sput v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->EDIT_PARTICIPANT_RESULT_CODE:I

    .line 46
    const/16 v0, 0x78

    sput v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->DELETE_PARTICIPANT_RESULT_CODE:I

    .line 47
    const-string v0, "newUser"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->NEW_USER:Ljava/lang/String;

    .line 48
    const-string v0, "editUser"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->EDIT_USER:Ljava/lang/String;

    .line 49
    const-string v0, "deletUser"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->DELET_USER:Ljava/lang/String;

    .line 51
    const-string v0, "Item"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->CONF_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->isModify:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->isModify:Z

    return v0
.end method

.method private setAdapterToListView()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;

    .line 219
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 218
    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceAddedItemAdapter:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;

    .line 220
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->lvParticipant:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceAddedItemAdapter:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceAddedItemAdapter:Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/adapter/ConferenceAddedItemAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method

.method public static toCreateNewConferenceParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/ConferenceItem;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;)V
    .locals 2
    .parameter "activity"
    .parameter "item"
    .parameter "flag"

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->CONF_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 185
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void
.end method


# virtual methods
.method public createNewConference()V
    .locals 13

    .prologue
    .line 250
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, dialog:Landroid/app/ProgressDialog;
    const-string v10, "Please wait..."

    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 252
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 253
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 256
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 257
    .local v4, objConf:Lorg/json/JSONObject;
    const-string v10, "subjectconf"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSubject()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v10, "typeconf"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getTypeConf()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v10, "dateconf"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v10, "timeconf"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceHour()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v10, "dhour"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getdHours()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v10, "dminutes"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getdMinutes()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v10, "maxattendees"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/model/ConferenceItem;->getMaxAttendee()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .local v0, arrParticipant:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v10, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 276
    const-string v10, "participant"

    invoke-virtual {v4, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v5, objParameter:Lorg/json/JSONObject;
    const-string v10, "username"

    iget-object v11, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v11}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v10, "data_conference"

    invoke-virtual {v5, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v7, object:Lorg/json/JSONObject;
    const-string v10, "dataType"

    const-string v11, "CREATECONFERENCE"

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v10, "dataSource"

    const-string v11, "APP"

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v10, "dataParameter"

    invoke-virtual {v7, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v10, "transactionID"

    const-string v11, ""

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v10, "statusCode"

    const-string v11, ""

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v10, "strMessage"

    const-string v11, ""

    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, requestedParam:Ljava/lang/String;
    invoke-static {v9}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 294
    new-instance v8, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v8}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 295
    .local v8, params:Lcom/loopj/android/http/RequestParams;
    const-string v10, "param"

    invoke-virtual {v8, v10, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v10, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v11, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v12, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;

    invoke-direct {v12, p0, v1}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v10, v11, v8, v12}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 323
    .end local v0           #arrParticipant:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #objConf:Lorg/json/JSONObject;
    .end local v5           #objParameter:Lorg/json/JSONObject;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #params:Lcom/loopj/android/http/RequestParams;
    .end local v9           #requestedParam:Ljava/lang/String;
    :goto_1
    return-void

    .line 268
    .restart local v0       #arrParticipant:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #objConf:Lorg/json/JSONObject;
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v6, objParticipant:Lorg/json/JSONObject;
    const-string v11, "name"

    iget-object v10, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v10}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v11, "email"

    iget-object v10, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v10}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v11, "sms"

    iget-object v10, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v10}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getPhone()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 319
    .end local v0           #arrParticipant:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #objConf:Lorg/json/JSONObject;
    .end local v6           #objParticipant:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public fetchResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 331
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, object:Lorg/json/JSONObject;
    const-string v4, "rescode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "Result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, resObj:Lorg/json/JSONObject;
    const-string v4, "rescode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    const-string v4, "resmsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 337
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v1, i:Landroid/content/Intent;
    const-string v4, "status"

    const-string v5, "success"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v1}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setResult(ILandroid/content/Intent;)V

    .line 340
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->finish()V

    .line 352
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #resObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 343
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #resObj:Lorg/json/JSONObject;
    :cond_0
    const-string v4, "resmsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #resObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v4, "resmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public fetchUpdateResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "res"

    .prologue
    .line 446
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, object:Lorg/json/JSONObject;
    const-string v4, "rescode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "Result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, resObj:Lorg/json/JSONObject;
    const-string v4, "rescode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    const-string v4, "resmsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 452
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v1, i:Landroid/content/Intent;
    const-string v4, "status"

    const-string v5, "success"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v1}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setResult(ILandroid/content/Intent;)V

    .line 455
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->finish()V

    .line 467
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #resObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 458
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v3       #resObj:Lorg/json/JSONObject;
    :cond_0
    const-string v4, "resmsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #resObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v4, "resmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public initialiazeIntent()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 82
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->CONF_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    .line 83
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->flag:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    .line 85
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->flag:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;->MODIFY:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->isModify:Z

    .line 87
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    .line 89
    :cond_0
    return-void
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 139
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$1;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->btnSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$2;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->lvParticipant:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$3;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeLibs()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public initializeViews()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 113
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->lvParticipant:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->lvParticipant:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->txtEmpty:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->btnCancel:Landroid/widget/Button;

    .line 117
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->btnSubmit:Landroid/widget/Button;

    .line 119
    iget-boolean v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->isModify:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->btnSubmit:Landroid/widget/Button;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->btnSubmit:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/neuron/mytelkom/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    sget v2, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->ADD_PARTICIPANT_RESULT_CODE:I

    if-ne p2, v2, :cond_0

    .line 195
    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->NEW_USER:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    .line 196
    .local v1, user:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setAdapterToListView()V

    .line 200
    .end local v1           #user:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    :cond_0
    sget v2, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->EDIT_PARTICIPANT_RESULT_CODE:I

    if-ne p2, v2, :cond_1

    .line 201
    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->EDIT_USER:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    .line 202
    .restart local v1       #user:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_POSITION:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, position:I
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setAdapterToListView()V

    .line 208
    .end local v0           #position:I
    .end local v1           #user:Lcom/neuron/mytelkom/model/ConferenceAttendees;
    :cond_1
    sget v2, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->DELETE_PARTICIPANT_RESULT_CODE:I

    if-ne p2, v2, :cond_2

    .line 209
    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_POSITION:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 211
    .restart local v0       #position:I
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setAdapterToListView()V

    .line 214
    .end local v0           #position:I
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 67
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->initializeLibs()V

    .line 72
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->initialiazeIntent()V

    .line 73
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->initializeViews()V

    .line 74
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setToView()V

    .line 75
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->initializeActions()V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 245
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :sswitch_0
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->ADD:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    .line 237
    invoke-static {p0, v1}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->toCreateNewConferenceAddParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;)V

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->finish()V

    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a0102 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->txtEmpty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setToView()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 131
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->setAdapterToListView()V

    .line 132
    return-void
.end method

.method public updateConference()V
    .locals 15

    .prologue
    .line 355
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 356
    .local v2, dialog:Landroid/app/ProgressDialog;
    const-string v12, "Please wait..."

    invoke-virtual {v2, v12}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 358
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 361
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v6, objConf:Lorg/json/JSONObject;
    const-string v12, "subjectconf"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSubject()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v12, "conference_id"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;

    move-result-object v13

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceKey;->getConferenceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v12, "typeconf"

    const-string v13, "Scheduled"

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v4, ""

    .line 366
    .local v4, guestPass:Ljava/lang/String;
    const-string v1, ""

    .line 368
    .local v1, chairPass:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v5, v12, :cond_0

    .line 376
    const-string v12, "guestpass"

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v12, "chairmanpass"

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string v12, "dateconf"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v12, "timeconf"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceHour()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v12, "dhour"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getdHours()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v12, "dminutes"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getdMinutes()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v12, "maxattendees"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/model/ConferenceItem;->getMaxAttendee()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 386
    .local v0, arrParticipant:Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_1
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v5, v12, :cond_3

    .line 395
    const-string v12, "participant"

    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 398
    .local v7, objParameter:Lorg/json/JSONObject;
    const-string v12, "username"

    iget-object v13, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v13}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v12, "data_conference"

    invoke-virtual {v7, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .local v9, object:Lorg/json/JSONObject;
    const-string v12, "dataType"

    const-string v13, "MODIFYCONFERENCE"

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v12, "dataSource"

    const-string v13, "APP"

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v12, "dataParameter"

    invoke-virtual {v9, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v12, "transactionID"

    const-string v13, ""

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v12, "statusCode"

    const-string v13, ""

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v12, "strMessage"

    const-string v13, ""

    invoke-static {v13}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, requestedParam:Ljava/lang/String;
    invoke-static {v11}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 413
    new-instance v10, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v10}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 414
    .local v10, params:Lcom/loopj/android/http/RequestParams;
    const-string v12, "param"

    invoke-virtual {v10, v12, v11}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v13, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v14, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$5;

    invoke-direct {v14, p0, v2}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$5;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v12, v13, v10, v14}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 442
    .end local v0           #arrParticipant:Lorg/json/JSONArray;
    .end local v1           #chairPass:Ljava/lang/String;
    .end local v4           #guestPass:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #objConf:Lorg/json/JSONObject;
    .end local v7           #objParameter:Lorg/json/JSONObject;
    .end local v9           #object:Lorg/json/JSONObject;
    .end local v10           #params:Lcom/loopj/android/http/RequestParams;
    .end local v11           #requestedParam:Ljava/lang/String;
    :goto_2
    return-void

    .line 369
    .restart local v1       #chairPass:Ljava/lang/String;
    .restart local v4       #guestPass:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #objConf:Lorg/json/JSONObject;
    :cond_0
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferencePassword;->getConferenceRole()Ljava/lang/String;

    move-result-object v12

    const-string v13, "chair"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 370
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferencePassword;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 371
    :cond_2
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferencePassword;->getConferenceRole()Ljava/lang/String;

    move-result-object v12

    const-string v13, "general"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 372
    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferencePassword;->getPassword()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 387
    .restart local v0       #arrParticipant:Lorg/json/JSONArray;
    :cond_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v8, objParticipant:Lorg/json/JSONObject;
    const-string v13, "name"

    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v13, "email"

    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getEmail()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v13, "sms"

    iget-object v12, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->listUser:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v12}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getPhone()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 438
    .end local v0           #arrParticipant:Lorg/json/JSONArray;
    .end local v1           #chairPass:Ljava/lang/String;
    .end local v4           #guestPass:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #objConf:Lorg/json/JSONObject;
    .end local v8           #objParticipant:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 440
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
