.class public Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DetilPtsnFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private PSTN_KEY:Ljava/lang/String;

.field private btnHapusProduk:Landroid/widget/Button;

.field private indicator:Landroid/widget/ProgressBar;

.field private lnDetilBilling:Landroid/widget/LinearLayout;

.field private lnDetilInformation:Landroid/widget/LinearLayout;

.field public product:Lcom/neuron/mytelkom/model/Product;

.field products:Lcom/neuron/mytelkom/model/Product;

.field private rlCreateTicket:Landroid/widget/RelativeLayout;

.field private rlDetilBilling:Landroid/widget/RelativeLayout;

.field private rlDetilInformation:Landroid/widget/RelativeLayout;

.field private scContent:Landroid/widget/ScrollView;

.field private txtAddress:Landroid/widget/TextView;

.field private txtBilling:Landroid/widget/TextView;

.field private txtOwnerName:Landroid/widget/TextView;

.field private txtPeriode:Landroid/widget/TextView;

.field private txtProductNo:Landroid/widget/TextView;

.field private viewError:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "DetilPtsnFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 43
    const-string v0, "pstnKey"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->PSTN_KEY:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilBilling:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilInformation:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->scContent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->viewError:Landroid/view/View;

    return-object v0
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 260
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 261
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 262
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 263
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 198
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Lcom/neuron/mytelkom/model/Product;->getPstnDetailProduct(Ljava/lang/String;)Lcom/neuron/mytelkom/model/Product;

    move-result-object v4

    iput-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    .line 203
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->scContent:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 207
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->viewError:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->btnHapusProduk:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtAddress:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Customer;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtBilling:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Rp "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/Product;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtOwnerName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Customer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtPeriode:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtProductNo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/Product;->getFastel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getListPstnDetails()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 232
    .end local v0           #i:I
    :goto_1
    return-void

    .line 217
    .restart local v0       #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030035

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 218
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a00db

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 219
    .local v1, txtTitle:Landroid/widget/TextView;
    const v4, 0x7f0a00dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, txtValue:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

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

    .line 222
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->products:Lcom/neuron/mytelkom/model/Product;

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

    .line 224
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilBilling:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0           #i:I
    .end local v1           #txtTitle:Landroid/widget/TextView;
    .end local v2           #txtValue:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->scContent:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 230
    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->viewError:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public getProduct()Lcom/neuron/mytelkom/model/Product;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->product:Lcom/neuron/mytelkom/model/Product;

    return-object v0
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 150
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 152
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->scContent:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->viewError:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v0, objParam:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v3, "productType"

    const-string v4, "PSTN"

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v3, "productNo"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, strParam:Ljava/lang/String;
    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 165
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileBroadbandDT.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$5;-><init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0           #objParam:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #strParam:Ljava/lang/String;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->PSTN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->setProduct(Lcom/neuron/mytelkom/model/Product;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->initializeRequest()V

    .line 101
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->rlDetilBilling:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->rlDetilInformation:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->rlCreateTicket:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->btnHapusProduk:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment$4;-><init>(Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 238
    const v0, 0x7f090004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 65
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->rlDetilBilling:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->rlDetilInformation:Landroid/widget/RelativeLayout;

    .line 68
    const v1, 0x7f0a00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilBilling:Landroid/widget/LinearLayout;

    .line 69
    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->lnDetilInformation:Landroid/widget/LinearLayout;

    .line 71
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;

    .line 72
    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->scContent:Landroid/widget/ScrollView;

    .line 73
    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->viewError:Landroid/view/View;

    .line 75
    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtAddress:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtBilling:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtOwnerName:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtPeriode:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->txtProductNo:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->rlCreateTicket:Landroid/widget/RelativeLayout;

    .line 83
    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->btnHapusProduk:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->btnHapusProduk:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->setHasOptionsMenu(Z)V

    .line 87
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->closeFragment()V

    .line 248
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0100

    if-ne v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->initializeRequest()V

    .line 254
    :cond_1
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->PSTN_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->getProduct()Lcom/neuron/mytelkom/model/Product;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 270
    return-void
.end method

.method public setProduct(Lcom/neuron/mytelkom/model/Product;)V
    .locals 0
    .parameter "product"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilPtsnFragment;->product:Lcom/neuron/mytelkom/model/Product;

    .line 53
    return-void
.end method
