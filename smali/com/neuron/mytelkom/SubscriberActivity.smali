.class public Lcom/neuron/mytelkom/SubscriberActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "SubscriberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;
    }
.end annotation


# static fields
.field public static KEY_CONFERENCE_ITEM:Ljava/lang/String;


# instance fields
.field private indicator:Landroid/widget/ProgressBar;

.field private item:Lcom/neuron/mytelkom/model/ConferenceItem;

.field private listSubscriber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/Subscriber;",
            ">;"
        }
    .end annotation
.end field

.field private lvSubscriber:Landroid/widget/ListView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "item"

    sput-object v0, Lcom/neuron/mytelkom/SubscriberActivity;->KEY_CONFERENCE_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/SubscriberActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/SubscriberActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/SubscriberActivity;Lcom/neuron/mytelkom/model/Subscriber;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/neuron/mytelkom/SubscriberActivity;->openActionDialog(Lcom/neuron/mytelkom/model/Subscriber;)V

    return-void
.end method

.method private openActionDialog(Lcom/neuron/mytelkom/model/Subscriber;)V
    .locals 8
    .parameter "subscriber"

    .prologue
    .line 294
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, dialog:Landroid/app/Dialog;
    const v7, 0x7f030017

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 296
    const v7, 0x7f0a006c

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 297
    .local v5, txtName:Landroid/widget/TextView;
    const v7, 0x7f0a006d

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 298
    .local v6, txtRole:Landroid/widget/TextView;
    const v7, 0x7f0a006e

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 299
    .local v4, txtCallerId:Landroid/widget/TextView;
    const v7, 0x7f0a006f

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 300
    .local v2, tglMic:Landroid/widget/ToggleButton;
    const v7, 0x7f0a0070

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 301
    .local v3, tglSpeaker:Landroid/widget/ToggleButton;
    const v7, 0x7f0a0071

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 303
    .local v0, btnKick:Landroid/widget/Button;
    invoke-virtual {p1}, Lcom/neuron/mytelkom/model/Subscriber;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p1}, Lcom/neuron/mytelkom/model/Subscriber;->getCallerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p1}, Lcom/neuron/mytelkom/model/Subscriber;->getConferenceRole()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v7, Lcom/neuron/mytelkom/SubscriberActivity$4;

    invoke-direct {v7, p0, p1}, Lcom/neuron/mytelkom/SubscriberActivity$4;-><init>(Lcom/neuron/mytelkom/SubscriberActivity;Lcom/neuron/mytelkom/model/Subscriber;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    new-instance v7, Lcom/neuron/mytelkom/SubscriberActivity$5;

    invoke-direct {v7, p0, p1}, Lcom/neuron/mytelkom/SubscriberActivity$5;-><init>(Lcom/neuron/mytelkom/SubscriberActivity;Lcom/neuron/mytelkom/model/Subscriber;)V

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 329
    new-instance v7, Lcom/neuron/mytelkom/SubscriberActivity$6;

    invoke-direct {v7, p0, p1}, Lcom/neuron/mytelkom/SubscriberActivity$6;-><init>(Lcom/neuron/mytelkom/SubscriberActivity;Lcom/neuron/mytelkom/model/Subscriber;)V

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 342
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 343
    return-void
.end method

.method public static toSubscriberActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/ConferenceItem;)V
    .locals 2
    .parameter "activity"
    .parameter "item"

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/SubscriberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity;->KEY_CONFERENCE_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method


# virtual methods
.method protected fetchActionResponse(Ljava/lang/String;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 270
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "Result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, resObj:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const-string v3, "resmsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {p0, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->finish()V

    .line 291
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 278
    .restart local v1       #object:Lorg/json/JSONObject;
    .restart local v2       #resObj:Lorg/json/JSONObject;
    :cond_0
    const-string v3, "resmsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v3, "resmsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public fetchResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    const/16 v2, 0x8

    .line 179
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 180
    invoke-static {p1}, Lcom/neuron/mytelkom/model/Subscriber;->getListSubscriber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;

    .line 181
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    new-instance v0, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;

    .line 183
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;

    .line 182
    invoke-direct {v0, p0, v1}, Lcom/neuron/mytelkom/adapter/SubscriberAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 184
    .local v0, subscriberAdapter:Lcom/neuron/mytelkom/adapter/SubscriberAdapter;
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    .end local v0           #subscriberAdapter:Lcom/neuron/mytelkom/adapter/SubscriberAdapter;
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/neuron/mytelkom/SubscriberActivity;->viewError:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initialiazeIntent()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 79
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/SubscriberActivity;->KEY_CONFERENCE_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    iput-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    .line 80
    return-void
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 165
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/SubscriberActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/SubscriberActivity$2;-><init>(Lcom/neuron/mytelkom/SubscriberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeLibs()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->listSubscriber:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public initializeRequest()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 101
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeRequest()V

    .line 102
    iget-object v5, p0, Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    iget-object v5, p0, Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 104
    iget-object v5, p0, Lcom/neuron/mytelkom/SubscriberActivity;->viewError:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, dataParameter:Lorg/json/JSONObject;
    const-string v5, "username"

    iget-object v6, p0, Lcom/neuron/mytelkom/SubscriberActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v5, "conference_id"

    iget-object v6, p0, Lcom/neuron/mytelkom/SubscriberActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceKey;->getConferenceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v2, object:Lorg/json/JSONObject;
    const-string v5, "dataType"

    const-string v6, "GETSUBSCRIBER"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v5, "dataSource"

    const-string v6, "APP"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v5, "dataParameter"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v5, "transactionID"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v5, "statusCode"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, rquestedParams:Ljava/lang/String;
    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 119
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 120
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v5, "param"

    invoke-virtual {v3, v5, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lcom/neuron/mytelkom/SubscriberActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v6, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v7, Lcom/neuron/mytelkom/SubscriberActivity$1;

    invoke-direct {v7, p0}, Lcom/neuron/mytelkom/SubscriberActivity$1;-><init>(Lcom/neuron/mytelkom/SubscriberActivity;)V

    invoke-virtual {v5, v6, v3, v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0           #dataParameter:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    .end local v4           #rquestedParams:Ljava/lang/String;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 86
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->lvSubscriber:Landroid/widget/ListView;

    .line 87
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;

    .line 88
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->viewError:Landroid/view/View;

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SubscriberActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 63
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->initialiazeIntent()V

    .line 68
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->initializeViews()V

    .line 69
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->initializeLibs()V

    .line 70
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->initializeRequest()V

    .line 71
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->initializeActions()V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 349
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->finish()V

    .line 359
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0100

    if-ne v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/neuron/mytelkom/SubscriberActivity;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SubscriberActivity;->initializeRequest()V

    .line 365
    :cond_1
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public subscriberActionControll(Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;Lcom/neuron/mytelkom/model/Subscriber;)V
    .locals 11
    .parameter "action"
    .parameter "subscriber"

    .prologue
    .line 193
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 194
    .local v1, dialog:Landroid/app/ProgressDialog;
    const-string v8, "Harap tunggu..."

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 198
    :try_start_0
    const-string v0, ""

    .local v0, dataType:Ljava/lang/String;
    const-string v4, ""

    .line 199
    .local v4, operation:Ljava/lang/String;
    sget-object v8, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->MIC_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    if-ne p1, v8, :cond_2

    .line 200
    const-string v0, "ROOM_SETSILENCE"

    .line 201
    const-string v4, "true"

    .line 215
    :cond_0
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 216
    .local v5, parameter:Lorg/json/JSONObject;
    const-string v8, "conference_id"

    iget-object v9, p0, Lcom/neuron/mytelkom/SubscriberActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v9}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;

    move-result-object v9

    invoke-virtual {v9}, Lcom/neuron/mytelkom/model/ConferenceKey;->getConferenceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v9, "chairman_pass"

    iget-object v8, p0, Lcom/neuron/mytelkom/SubscriberActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v8}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v8}, Lcom/neuron/mytelkom/model/ConferencePassword;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v8, "subscriberID"

    invoke-virtual {p2}, Lcom/neuron/mytelkom/model/Subscriber;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v8, "callID"

    invoke-virtual {p2}, Lcom/neuron/mytelkom/model/Subscriber;->getCallerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    sget-object v8, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->KICK:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    if-eq p1, v8, :cond_1

    .line 221
    const-string v8, "operation"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v3, object:Lorg/json/JSONObject;
    const-string v8, "dataType"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v8, "dataSource"

    const-string v9, "APP"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v8, "transactionID"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v8, "statusCode"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v8, "strMessage"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v8, "dataParameter"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, requestedParams:Ljava/lang/String;
    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 235
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 236
    .local v6, params:Lcom/loopj/android/http/RequestParams;
    const-string v8, "param"

    invoke-virtual {v6, v8, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    iget-object v8, p0, Lcom/neuron/mytelkom/SubscriberActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v9, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v10, Lcom/neuron/mytelkom/SubscriberActivity$3;

    invoke-direct {v10, p0, v1}, Lcom/neuron/mytelkom/SubscriberActivity$3;-><init>(Lcom/neuron/mytelkom/SubscriberActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v8, v9, v6, v10}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 264
    .end local v0           #dataType:Ljava/lang/String;
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #operation:Ljava/lang/String;
    .end local v5           #parameter:Lorg/json/JSONObject;
    .end local v6           #params:Lcom/loopj/android/http/RequestParams;
    .end local v7           #requestedParams:Ljava/lang/String;
    :goto_1
    return-void

    .line 202
    .restart local v0       #dataType:Ljava/lang/String;
    .restart local v4       #operation:Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->MIC_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    if-ne p1, v8, :cond_3

    .line 203
    const-string v0, "ROOM_SETSILENCE"

    .line 204
    const-string v4, "false"

    .line 205
    goto/16 :goto_0

    :cond_3
    sget-object v8, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->SPEAKER_ON:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    if-ne p1, v8, :cond_4

    .line 206
    const-string v0, "ROOM_SETLISTEN"

    .line 207
    const-string v4, "true"

    .line 208
    goto/16 :goto_0

    :cond_4
    sget-object v8, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->SPEAKER_OFF:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    if-ne p1, v8, :cond_5

    .line 209
    const-string v0, "ROOM_SETLISTEN"

    .line 210
    const-string v4, "false"

    .line 211
    goto/16 :goto_0

    :cond_5
    sget-object v8, Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;->KICK:Lcom/neuron/mytelkom/SubscriberActivity$SubscriberAction;

    if-ne p1, v8, :cond_0

    .line 212
    const-string v0, "ROOM_KICK"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    .end local v0           #dataType:Ljava/lang/String;
    .end local v4           #operation:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 262
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method
