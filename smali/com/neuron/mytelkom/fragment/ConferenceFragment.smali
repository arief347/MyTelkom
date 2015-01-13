.class public Lcom/neuron/mytelkom/fragment/ConferenceFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "ConferenceFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private indicator:Landroid/widget/ProgressBar;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ConferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private lvConference:Landroid/widget/ListView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "ConferenceFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->viewError:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 185
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListConference(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    .line 188
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->viewError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->setToView()V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->viewError:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 106
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/ConferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeLibs()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public initializeRequest()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 132
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 133
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 135
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->viewError:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v3, user:Lorg/json/JSONObject;
    const-string v4, "username"

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v0, object:Lorg/json/JSONObject;
    const-string v4, "dataType"

    const-string v5, "MYCONFERENCE"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v4, "dataSource"

    const-string v5, "APP"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v4, "dataParameter"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v4, "transactionID"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v4, "statusCode"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v4, "strMessage"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, requestedParam:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 151
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v4, "param"

    invoke-virtual {v1, v4, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v5, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    new-instance v6, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;

    invoke-direct {v6, p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/ConferenceFragment;)V

    invoke-virtual {v4, v5, v1, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0           #object:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #requestedParam:Ljava/lang/String;
    .end local v3           #user:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->initializeRequest()V

    .line 80
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->initializeActions()V

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->initializeLibs()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 205
    const/high16 v0, 0x7f09

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 58
    const v1, 0x7f03001d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    .line 60
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    .line 61
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->viewError:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 66
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->setHasOptionsMenu(Z)V

    .line 71
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->onDetach()V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 218
    :sswitch_0
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Anda hanya diperbolehkan memiliki 2 konferensi"

    invoke-static {v1, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;->NEW:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    invoke-static {v1, v2}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->toCreateNewConferenceParticipant(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;)V

    goto :goto_0

    .line 226
    :sswitch_1
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->initializeRequest()V

    goto :goto_0

    .line 232
    :sswitch_2
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0a00ff -> :sswitch_0
        0x7f0a0100 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->onResume()V

    .line 243
    return-void
.end method

.method public setToView()V
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 88
    new-instance v0, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/neuron/mytelkom/adapter/ConferenceAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 89
    .local v0, conferenceAdapter:Lcom/neuron/mytelkom/adapter/ConferenceAdapter;
    const/4 v1, 0x0

    .line 91
    .local v1, view:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->lvConference:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected toItemPositionSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 119
    new-instance v0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;-><init>()V

    .line 120
    .local v0, detailConferenceFragment:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v0, v2}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->setItem(Lcom/neuron/mytelkom/model/ConferenceItem;)V

    .line 122
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 123
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    const v2, 0x7f0a0003

    sget-object v3, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 127
    return-void
.end method
