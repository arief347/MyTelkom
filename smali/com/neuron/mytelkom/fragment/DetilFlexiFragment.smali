.class public Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DetilFlexiFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private KEY_FLEXI_DATA:Ljava/lang/String;

.field private btnDeleteProduct:Landroid/widget/Button;

.field private indicator:Landroid/widget/ProgressBar;

.field private lnDetilBilling:Landroid/widget/LinearLayout;

.field private lnDetilInformation:Landroid/widget/LinearLayout;

.field public product:Lcom/neuron/mytelkom/model/Product;

.field products:Lcom/neuron/mytelkom/model/Product;

.field private rlCreateTicket:Landroid/widget/RelativeLayout;

.field private rlDetilBilling:Landroid/widget/RelativeLayout;

.field private rlDetilInformation:Landroid/widget/RelativeLayout;

.field private scContent:Landroid/widget/ScrollView;

.field private txtBilling:Landroid/widget/TextView;

.field private txtFlexiNo:Landroid/widget/TextView;

.field private txtOwnerAddress:Landroid/widget/TextView;

.field private txtOwnerName:Landroid/widget/TextView;

.field private txtPeriode:Landroid/widget/TextView;

.field private txtStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "DetilFlexiFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 45
    const-string v0, "flexiData"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->KEY_FLEXI_DATA:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilBilling:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilInformation:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->scContent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 266
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 267
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 268
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 269
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/neuron/mytelkom/model/Product;->getFlexiDetailProduct(Ljava/lang/String;)Lcom/neuron/mytelkom/model/Product;

    move-result-object v4

    iput-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    .line 206
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->scContent:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 209
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->btnDeleteProduct:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtFlexiNo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getFastel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtBilling:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Rp "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/Product;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtOwnerName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Customer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtOwnerAddress:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Customer;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtPeriode:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getListPstnDetails()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 238
    .end local v0           #i:I
    :goto_1
    return-void

    .line 219
    .restart local v0       #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030035

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 220
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a00db

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 221
    .local v1, txtTitle:Landroid/widget/TextView;
    const v4, 0x7f0a00dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 223
    .local v2, txtValue:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getListPstnDetails()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/PstnDetailSummary;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->getInstallment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getListPstnDetails()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neuron/mytelkom/model/PstnDetailSummary;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/PstnDetailSummary;->getNamount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilBilling:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0           #i:I
    .end local v1           #txtTitle:Landroid/widget/TextView;
    .end local v2           #txtValue:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->scContent:Landroid/widget/ScrollView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getProduct()Lcom/neuron/mytelkom/model/Product;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->product:Lcom/neuron/mytelkom/model/Product;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 105
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->rlDetilBilling:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->rlDetilInformation:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->rlCreateTicket:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->btnDeleteProduct:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$4;-><init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    .line 154
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 156
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->scContent:Landroid/widget/ScrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 160
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v0, objParam:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "productType"

    const-string v4, "FLEXI"

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v3, "productNo"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, strParam:Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 168
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileBroadbandDT.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment$5;-><init>(Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0           #objParam:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #strParam:Ljava/lang/String;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->KEY_FLEXI_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->setProduct(Lcom/neuron/mytelkom/model/Product;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->initializeRequest()V

    .line 97
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->initializeActions()V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 244
    const v0, 0x7f090004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 245
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->rlDetilBilling:Landroid/widget/RelativeLayout;

    .line 66
    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->rlDetilInformation:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilBilling:Landroid/widget/LinearLayout;

    .line 68
    const v1, 0x7f0a0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->lnDetilInformation:Landroid/widget/LinearLayout;

    .line 69
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;

    .line 70
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->scContent:Landroid/widget/ScrollView;

    .line 71
    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtBilling:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0a008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtFlexiNo:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtOwnerAddress:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtOwnerName:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtPeriode:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->txtStatus:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->rlCreateTicket:Landroid/widget/RelativeLayout;

    .line 79
    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->btnDeleteProduct:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->btnDeleteProduct:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->setHasOptionsMenu(Z)V

    .line 84
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->closeFragment()V

    .line 254
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0100

    if-ne v0, v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->initializeRequest()V

    .line 260
    :cond_1
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->KEY_FLEXI_DATA:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 276
    return-void
.end method

.method public setProduct(Lcom/neuron/mytelkom/model/Product;)V
    .locals 0
    .parameter "product"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilFlexiFragment;->product:Lcom/neuron/mytelkom/model/Product;

    .line 52
    return-void
.end method
