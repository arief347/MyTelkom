.class public Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "ConferenceRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;
    }
.end annotation


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private KEY_CONFERENCE_ROOM:Ljava/lang/String;

.field private btnConfRoom:Landroid/widget/Button;

.field private btnSubscriber:Landroid/widget/Button;

.field conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

.field private lvConferenceRoom:Landroid/widget/ListView;

.field private txtConfRoomDuration:Landroid/widget/TextView;

.field private txtConfRoomModerator:Landroid/widget/TextView;

.field private txtConfRoomName:Landroid/widget/TextView;

.field private txtConfRoomState:Landroid/widget/TextView;

.field private txtConfRoomTotalAttendee:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "ConferenceRoomFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 41
    const-string v0, "conferenceRoom"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->KEY_CONFERENCE_ROOM:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 266
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 267
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 268
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 269
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 240
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "Result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, resObj:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 245
    const-string v4, "resmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 261
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 248
    .restart local v1       #object:Lorg/json/JSONObject;
    .restart local v2       #resObj:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "resmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "resmsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 118
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->lvConferenceRoom:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->btnConfRoom:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->btnSubscriber:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->KEY_CONFERENCE_ROOM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->setConferenceItem(Lcom/neuron/mytelkom/model/ConferenceItem;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->setToView()V

    .line 84
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->initializeActions()V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->lvConferenceRoom:Landroid/widget/ListView;

    .line 68
    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->btnConfRoom:Landroid/widget/Button;

    .line 69
    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->btnSubscriber:Landroid/widget/Button;

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->setHasOptionsMenu(Z)V

    .line 71
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->closeFragment()V

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->KEY_CONFERENCE_ROOM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 287
    return-void
.end method

.method public requestEndConference()V
    .locals 9

    .prologue
    .line 187
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v6, "Harap Tunggu..."

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 192
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v5, user:Lorg/json/JSONObject;
    const-string v6, "conference_id"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/ConferenceKey;->getConferenceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v7, "chairman_pass"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferencePassword;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .local v2, object:Lorg/json/JSONObject;
    const-string v6, "dataType"

    const-string v7, "ENDCONFERENCE"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v6, "dataSource"

    const-string v7, "APP"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v6, "dataParameter"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v6, "transactionID"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v6, "statusCode"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v6, "strMessage"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, requestedParam:Ljava/lang/String;
    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 206
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 207
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v3, v6, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v8, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;

    invoke-direct {v8, p0, v0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v7, v3, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    .end local v4           #requestedParam:Ljava/lang/String;
    .end local v5           #user:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v1

    .line 229
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConferenceItem(Lcom/neuron/mytelkom/model/ConferenceItem;)V
    .locals 0
    .parameter "conferenceItem"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    .line 54
    return-void
.end method

.method public setToView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 91
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002f

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, header:Landroid/view/View;
    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomName:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0a00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomState:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0a00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomModerator:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0a00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomTotalAttendee:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0a00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomDuration:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomDuration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getDurationText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomTotalAttendee:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Peserta"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->txtConfRoomModerator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSchedusedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->lvConferenceRoom:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 107
    new-instance v0, Lcom/neuron/mytelkom/adapter/ConferenceRoomAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getConferenceItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/neuron/mytelkom/adapter/ConferenceRoomAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 108
    .local v0, conferenceRoomAdapter:Lcom/neuron/mytelkom/adapter/ConferenceRoomAdapter;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->lvConferenceRoom:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    .end local v0           #conferenceRoomAdapter:Lcom/neuron/mytelkom/adapter/ConferenceRoomAdapter;
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->lvConferenceRoom:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
    .locals 5
    .parameter "title"
    .parameter "message"
    .parameter "type"

    .prologue
    .line 151
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 151
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 161
    const-string v3, "Yes"

    new-instance v4, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;

    invoke-direct {v4, p0, p3}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$4;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 170
    const-string v3, "No"

    new-instance v4, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$5;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$5;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 183
    return-void
.end method
