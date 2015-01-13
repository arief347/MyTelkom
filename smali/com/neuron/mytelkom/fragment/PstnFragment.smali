.class public Lcom/neuron/mytelkom/fragment/PstnFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "PstnFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private indicator:Landroid/widget/ProgressBar;

.field private listItem:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/neuron/mytelkom/model/Product;",
            ">;"
        }
    .end annotation
.end field

.field private lvItem:Landroid/widget/ListView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "PstnFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/PstnFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/PstnFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/PstnFragment;Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/fragment/PstnFragment;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;

    return-object v0
.end method

.method private toAddNewProduct()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/neuron/mytelkom/AddNewProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    sget v1, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 98
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/PstnFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/PstnFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/PstnFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeLibs()V

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;

    .line 92
    return-void
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 124
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 125
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->viewError:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v2, requestedParam:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v3, "productType"

    const-string v4, "PSTN"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, param:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 135
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileBroadband.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/PstnFragment$2;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/PstnFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/PstnFragment;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0           #param:Ljava/lang/String;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #requestedParam:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->initializeRequest()V

    .line 74
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->initializeActions()V

    .line 75
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 214
    sget v0, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    if-ne p2, v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->initializeRequest()V

    .line 217
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->initializeLibs()V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 177
    const v0, 0x7f090005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 178
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

    .line 52
    const v1, 0x7f03002d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;

    .line 54
    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;

    .line 55
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->viewError:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 60
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/fragment/PstnFragment;->setHasOptionsMenu(Z)V

    .line 65
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 186
    :sswitch_0
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->toAddNewProduct()V

    goto :goto_0

    .line 190
    :sswitch_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 194
    :sswitch_2
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->initializeRequest()V

    goto :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a0100 -> :sswitch_2
        0x7f0a0104 -> :sswitch_0
    .end sparse-switch
.end method

.method public setToView()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 82
    new-instance v0, Lcom/neuron/mytelkom/adapter/PtsnAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/adapter/PtsnAdapter;-><init>(Landroid/app/Activity;Ljava/util/LinkedList;)V

    .line 83
    .local v0, ptsnAdapter:Lcom/neuron/mytelkom/adapter/PtsnAdapter;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->lvItem:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method protected toDetilBillingFragment(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 111
    new-instance v0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;

    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;-><init>()V

    .line 112
    .local v0, detPtsnFragment:Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/PstnFragment;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v0, v2}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->setProduct(Lcom/neuron/mytelkom/model/Product;)V

    .line 114
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 115
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/PstnFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/neuron/mytelkom/fragment/PstnFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/fragment/PstnFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 116
    const v2, 0x7f0a005c

    sget-object v3, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 119
    return-void
.end method
