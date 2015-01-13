.class public Lcom/neuron/mytelkom/fragment/HelpFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "HelpFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private indicator:Landroid/widget/ProgressBar;

.field private listHelp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/HelpItem;",
            ">;"
        }
    .end annotation
.end field

.field private lvHelp:Landroid/widget/ListView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "HelpFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/HelpFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/HelpFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->listHelp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/HelpFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method private getHelpData()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 83
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->viewError:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v0, object:Lorg/json/JSONObject;
    const-string v3, "dataType"

    const-string v4, "HELP"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v3, "dataSource"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v3, "dataParameter"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v3, "transactionID"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v3, "statusCode"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v3, "strMessage"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, requestedParams:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 99
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/mobile_requesthandler.php?api="

    .line 102
    new-instance v5, Lcom/neuron/mytelkom/fragment/HelpFragment$2;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/HelpFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/HelpFragment;)V

    .line 101
    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0           #object:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #requestedParams:Ljava/lang/String;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 138
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, object:Lorg/json/JSONObject;
    const-string v4, "rescode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const-string v4, "Result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, res:Ljava/lang/String;
    invoke-static {v3}, Lcom/neuron/mytelkom/model/HelpItem;->getListHelp(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->listHelp:Ljava/util/ArrayList;

    .line 142
    new-instance v1, Lcom/neuron/mytelkom/adapter/HelpAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->listHelp:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v5}, Lcom/neuron/mytelkom/adapter/HelpAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 143
    .local v1, helpAdapter:Lcom/neuron/mytelkom/adapter/HelpAdapter;
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    .end local v1           #helpAdapter:Lcom/neuron/mytelkom/adapter/HelpAdapter;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #res:Ljava/lang/String;
    :goto_0
    return-void

    .line 145
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->viewError:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v2           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 62
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/HelpFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/HelpFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/HelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    return-void
.end method

.method public initializeRequest()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 78
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->getHelpData()V

    .line 79
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->initializeRequest()V

    .line 54
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->initializeActions()V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->lvHelp:Landroid/widget/ListView;

    .line 43
    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->indicator:Landroid/widget/ProgressBar;

    .line 44
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment;->viewError:Landroid/view/View;

    .line 45
    return-object v0
.end method
