.class public Lcom/neuron/mytelkom/fragment/FlexiFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "FlexiFragment.java"


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
    .line 38
    const-string v0, "FlexiFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/FlexiFragment;Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/fragment/FlexiFragment;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;

    return-object v0
.end method

.method private toAddNewProduct()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/neuron/mytelkom/AddNewProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    sget v1, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 97
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/FlexiFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/FlexiFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeLibs()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;

    .line 91
    return-void
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 126
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 127
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->viewError:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v2, requestedParam:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v3, "productType"

    const-string v4, "FLEXY"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, param:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 137
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileBroadband.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/FlexiFragment;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #param:Ljava/lang/String;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #requestedParam:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->initializeRequest()V

    .line 73
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->initializeActions()V

    .line 74
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    sget v0, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    if-ne p2, v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->initializeRequest()V

    .line 218
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->initializeLibs()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 178
    const v0, 0x7f090005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
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

    .line 51
    const v1, 0x7f030026

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;

    .line 53
    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;

    .line 54
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->viewError:Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 59
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->setHasOptionsMenu(Z)V

    .line 64
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 200
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 187
    :sswitch_0
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->toAddNewProduct()V

    goto :goto_0

    .line 191
    :sswitch_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 195
    :sswitch_2
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->initializeRequest()V

    goto :goto_0

    .line 185
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
    .line 79
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 81
    new-instance v0, Lcom/neuron/mytelkom/adapter/FlexiAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/adapter/FlexiAdapter;-><init>(Landroid/app/Activity;Ljava/util/LinkedList;)V

    .line 82
    .local v0, flexiAdapter:Lcom/neuron/mytelkom/adapter/FlexiAdapter;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->lvItem:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method

.method protected toDetilBillingFragment(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/Product;->getProductDesc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLEXI PASCABAYAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;

    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;-><init>()V

    .line 113
    .local v0, deFlexiFragment:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/FlexiFragment;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v0, v2}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->setProduct(Lcom/neuron/mytelkom/model/Product;)V

    .line 115
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 116
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/FlexiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/neuron/mytelkom/fragment/FlexiFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/fragment/FlexiFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    const v2, 0x7f0a003f

    sget-object v3, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 119
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 121
    .end local v0           #deFlexiFragment:Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;
    .end local v1           #fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method
