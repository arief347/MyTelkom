.class public Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DetilBroadbandFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private KEY_BROADBAND:Ljava/lang/String;

.field private btnDeleteProduct:Landroid/widget/Button;

.field private indicator:Landroid/widget/ProgressBar;

.field public product:Lcom/neuron/mytelkom/model/Product;

.field products:Lcom/neuron/mytelkom/model/Product;

.field private rlCreateTicket:Landroid/widget/RelativeLayout;

.field private scContent:Landroid/widget/ScrollView;

.field private txtAddress:Landroid/widget/TextView;

.field private txtBilling:Landroid/widget/TextView;

.field private txtNo:Landroid/widget/TextView;

.field private txtOwner:Landroid/widget/TextView;

.field private txtPriod:Landroid/widget/TextView;

.field private txtStatus:Landroid/widget/TextView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "DetilBroabandFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 41
    const-string v0, "broadbandProduct"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->KEY_BROADBAND:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->scContent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 245
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 246
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 247
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 248
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-static {p1}, Lcom/neuron/mytelkom/model/Product;->getSpeedyDetail(Ljava/lang/String;)Lcom/neuron/mytelkom/model/Product;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    .line 195
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->scContent:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->viewError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->btnDeleteProduct:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getFastel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtBilling:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/Product;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtOwner:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Customer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Customer;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtPriod:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->scContent:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->viewError:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getProduct()Lcom/neuron/mytelkom/model/Product;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->product:Lcom/neuron/mytelkom/model/Product;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 104
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->rlCreateTicket:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->btnDeleteProduct:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 142
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 144
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->scContent:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->viewError:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v0, objParam:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v3, "productType"

    const-string v4, "SPEEDY"

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v3, "productNo"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, strParam:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 157
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileBroadbandDT.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0           #objParam:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #strParam:Ljava/lang/String;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->KEY_BROADBAND:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->setProduct(Lcom/neuron/mytelkom/model/Product;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->setToView()V

    .line 95
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->initializeRequest()V

    .line 96
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->initializeActions()V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 223
    const v0, 0x7f090004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 224
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtNo:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtBilling:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtOwner:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0a009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtPriod:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0a00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtAddress:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0a009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->txtStatus:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->viewError:Landroid/view/View;

    .line 72
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->scContent:Landroid/widget/ScrollView;

    .line 73
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;

    .line 75
    const v1, 0x7f0a00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->rlCreateTicket:Landroid/widget/RelativeLayout;

    .line 77
    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->btnDeleteProduct:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->btnDeleteProduct:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->setHasOptionsMenu(Z)V

    .line 81
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0100

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->initializeRequest()V

    .line 235
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->closeFragment()V

    .line 239
    :cond_1
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->KEY_BROADBAND:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 255
    return-void
.end method

.method public setProduct(Lcom/neuron/mytelkom/model/Product;)V
    .locals 0
    .parameter "product"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->product:Lcom/neuron/mytelkom/model/Product;

    .line 51
    return-void
.end method

.method public setToView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 130
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 133
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilBroadbandFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    return-void
.end method
