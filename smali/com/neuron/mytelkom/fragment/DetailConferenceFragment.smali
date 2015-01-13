.class public Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DetailConferenceFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private CONFERENCE_DATA:Ljava/lang/String;

.field private btnCancelConf:Landroid/widget/Button;

.field private btnDetailConference:Landroid/widget/Button;

.field private btnEditConf:Landroid/widget/Button;

.field private btnTelp:Landroid/widget/Button;

.field private conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

.field private indicator:Landroid/widget/ProgressBar;

.field public item:Lcom/neuron/mytelkom/model/ConferenceItem;

.field private lnAttendee:Landroid/widget/LinearLayout;

.field private lnContent:Landroid/widget/LinearLayout;

.field private lnScheduleAction:Landroid/widget/LinearLayout;

.field private lnScheduleControl:Landroid/widget/LinearLayout;

.field private scDetail:Landroid/widget/ScrollView;

.field private txtConfId:Landroid/widget/TextView;

.field private txtConfName:Landroid/widget/TextView;

.field private txtConfNo:Landroid/widget/TextView;

.field private txtDuration:Landroid/widget/TextView;

.field private txtModerator:Landroid/widget/TextView;

.field private txtModeratorPass:Landroid/widget/TextView;

.field private txtPesertaPass:Landroid/widget/TextView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "DetailConferenceFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 54
    const-string v0, "ConferenceData"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->CONFERENCE_DATA:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Lcom/neuron/mytelkom/model/ConferenceItem;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 282
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 283
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 284
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 285
    return-void
.end method


# virtual methods
.method protected fetchCancelResponse(Ljava/lang/String;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 408
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "Result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, resObj:Lorg/json/JSONObject;
    const-string v3, "rescode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 413
    const-string v4, "resmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 429
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 416
    .restart local v1       #object:Lorg/json/JSONObject;
    .restart local v2       #resObj:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "resmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 425
    :catch_1
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "resmsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public fetchResponse(Ljava/lang/String;)V
    .locals 8
    .parameter "response"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/neuron/mytelkom/model/ConferenceItem;->getDetailConferenceItem(Ljava/lang/String;)Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v5

    iput-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    .line 233
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    if-eqz v5, :cond_2

    .line 234
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnContent:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->viewError:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtConfId:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceKey;->getConferenceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtConfName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtConfNo:Landroid/widget/TextView;

    const-string v6, "08041000"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtDuration:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getDurationText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtModerator:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSchedusedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtModeratorPass:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferencePassword;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtPesertaPass:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListPasswords()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neuron/mytelkom/model/ConferencePassword;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferencePassword;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnAttendee:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnAttendee:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 263
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Berjalan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 264
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceState()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 265
    const-string v6, "created"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 266
    :cond_1
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnScheduleControl:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnScheduleAction:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    .end local v0           #i:I
    :cond_2
    :goto_1
    return-void

    .line 251
    .restart local v0       #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03003f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 252
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 253
    .local v2, txtName:Landroid/widget/TextView;
    const v5, 0x7f0a00fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    .local v1, txtEmail:Landroid/widget/TextView;
    const v5, 0x7f0a00fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 256
    .local v3, txtPhone:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnAttendee:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 269
    .end local v1           #txtEmail:Landroid/widget/TextView;
    .end local v2           #txtName:Landroid/widget/TextView;
    .end local v3           #txtPhone:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnScheduleControl:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnScheduleAction:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 273
    .end local v0           #i:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getItem()Lcom/neuron/mytelkom/model/ConferenceItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 118
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnDetailConference:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnTelp:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnCancelConf:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnEditConf:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$4;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method public initializeRequest()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 176
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 178
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->viewError:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v3, user:Lorg/json/JSONObject;
    const-string v4, "username"

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v4, "phone"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v4, "conference_id"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v0, object:Lorg/json/JSONObject;
    const-string v4, "dataType"

    const-string v5, "DETAILCONFERENCE"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v4, "dataSource"

    const-string v5, "APP"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v4, "dataParameter"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v4, "transactionID"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v4, "statusCode"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v4, "strMessage"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, requestedParam:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 198
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v4, "param"

    invoke-virtual {v1, v4, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v5, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v6, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;

    invoke-direct {v6, p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$5;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #object:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #requestedParam:Ljava/lang/String;
    .end local v3           #user:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->CONFERENCE_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->setItem(Lcom/neuron/mytelkom/model/ConferenceItem;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->initializeRequest()V

    .line 110
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->initializeActions()V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 291
    const v0, 0x7f090004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnDetailConference:Landroid/widget/Button;

    .line 76
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    .line 77
    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->scDetail:Landroid/widget/ScrollView;

    .line 78
    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtConfName:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtConfNo:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtConfId:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtModeratorPass:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtPesertaPass:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtModerator:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->txtDuration:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnAttendee:Landroid/widget/LinearLayout;

    .line 86
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->viewError:Landroid/view/View;

    .line 87
    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnTelp:Landroid/widget/Button;

    .line 88
    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnCancelConf:Landroid/widget/Button;

    .line 89
    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->btnEditConf:Landroid/widget/Button;

    .line 90
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnContent:Landroid/widget/LinearLayout;

    .line 91
    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnScheduleControl:Landroid/widget/LinearLayout;

    .line 92
    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->lnScheduleAction:Landroid/widget/LinearLayout;

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->setHasOptionsMenu(Z)V

    .line 95
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->closeFragment()V

    .line 301
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0100

    if-ne v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->initializeRequest()V

    .line 307
    :cond_1
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->CONFERENCE_DATA:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getItem()Lcom/neuron/mytelkom/model/ConferenceItem;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 315
    return-void
.end method

.method protected requestCancelConference()V
    .locals 9

    .prologue
    .line 356
    :try_start_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 357
    .local v1, dialog:Landroid/app/ProgressDialog;
    const-string v6, "Harap Tunggu..."

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 359
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 361
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v0, dataParameter:Lorg/json/JSONObject;
    const-string v6, "conference_id"

    iget-object v7, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceKey()Lcom/neuron/mytelkom/model/ConferenceKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/ConferenceKey;->getConferenceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v6, "username"

    iget-object v7, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .local v3, object:Lorg/json/JSONObject;
    const-string v6, "dataType"

    const-string v7, "CANCELCONFERENCE"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v6, "dataSource"

    const-string v7, "APP"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v6, "dataParameter"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v6, "transactionID"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v6, "statusCode"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v6, "strMessage"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, requestedParam:Ljava/lang/String;
    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 375
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 376
    .local v4, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v4, v6, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v8, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;

    invoke-direct {v8, p0, v1}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v7, v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0           #dataParameter:Lorg/json/JSONObject;
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v4           #params:Lcom/loopj/android/http/RequestParams;
    .end local v5           #requestedParam:Ljava/lang/String;
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v2

    .line 400
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setItem(Lcom/neuron/mytelkom/model/ConferenceItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    .line 62
    return-void
.end method

.method public showConferenceActionDialog(Ljava/lang/String;Ljava/lang/String;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V
    .locals 5
    .parameter "title"
    .parameter "message"
    .parameter "type"

    .prologue
    .line 318
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 318
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 327
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 328
    const-string v3, "Yes"

    new-instance v4, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;

    invoke-direct {v4, p0, p3}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$6;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 338
    const-string v3, "No"

    new-instance v4, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$7;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$7;-><init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 350
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 351
    return-void
.end method

.method protected toCoferenceRoom()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;-><init>()V

    .line 163
    .local v0, conferenceRoomFragment:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v0, v2}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->setConferenceItem(Lcom/neuron/mytelkom/model/ConferenceItem;)V

    .line 165
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 166
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    .line 166
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    const v2, 0x7f0a0003

    sget-object v3, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 170
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 171
    return-void
.end method
