.class public Lcom/neuron/mytelkom/fragment/DetilTicketFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DetilTicketFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private TICKET_KEY:Ljava/lang/String;

.field private indicator:Landroid/widget/ProgressBar;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private lnContent:Landroid/widget/LinearLayout;

.field private lnDetailTracking:Landroid/widget/LinearLayout;

.field private lvTrackingStatus:Landroid/widget/ListView;

.field private rlDetail:Landroid/widget/RelativeLayout;

.field private rlTrackingStatus:Landroid/widget/RelativeLayout;

.field private scDetailTracking:Landroid/widget/ScrollView;

.field public ticket:Lcom/neuron/mytelkom/model/Ticket;

.field private txtDetilJenisPengaduan:Landroid/widget/TextView;

.field private txtJenisPengaduan:Landroid/widget/TextView;

.field private txtJenisTiket:Landroid/widget/TextView;

.field private txtKontakPelapor:Landroid/widget/TextView;

.field private txtLokasiPelapor:Landroid/widget/TextView;

.field private txtNamaPelapor:Landroid/widget/TextView;

.field private txtNoProduk:Landroid/widget/TextView;

.field private txtTicketStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "DetilTicketFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 47
    const-string v0, "TicketKey"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->TICKET_KEY:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->scDetailTracking:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnDetailTracking:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 268
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 269
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 270
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 271
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->fetchResponse(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->indicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-static {p1}, Lcom/neuron/mytelkom/model/Ticket;->getDetailTicket(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;

    .line 193
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->setTrackingData()V

    .line 198
    :cond_0
    return-void
.end method

.method public getTicket()Lcom/neuron/mytelkom/model/Ticket;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->ticket:Lcom/neuron/mytelkom/model/Ticket;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 205
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->rlDetail:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->rlTrackingStatus:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeLibs()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    .line 144
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 145
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnContent:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v3, "productType"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Ticket;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v3, "productNo"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neuron/mytelkom/model/Ticket;->getProductNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, objParams:Ljava/lang/String;
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 156
    .local v2, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileMyTicketDT.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DetilTicketFragment;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0           #objParams:Ljava/lang/String;
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #params:Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->TICKET_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/Ticket;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->setTicket(Lcom/neuron/mytelkom/model/Ticket;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->setToView()V

    .line 112
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->initializeRequest()V

    .line 113
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->initializeActions()V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->initializeLibs()V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 247
    const v0, 0x7f090004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 248
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

    .line 71
    const v1, 0x7f030024

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->rlDetail:Landroid/widget/RelativeLayout;

    .line 73
    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->rlTrackingStatus:Landroid/widget/RelativeLayout;

    .line 74
    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->scDetailTracking:Landroid/widget/ScrollView;

    .line 75
    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnDetailTracking:Landroid/widget/LinearLayout;

    .line 76
    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lvTrackingStatus:Landroid/widget/ListView;

    .line 77
    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtTicketStatus:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtDetilJenisPengaduan:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtJenisPengaduan:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtJenisTiket:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtKontakPelapor:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtLokasiPelapor:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtNamaPelapor:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtNoProduk:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->indicator:Landroid/widget/ProgressBar;

    .line 88
    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lnContent:Landroid/widget/LinearLayout;

    .line 90
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 93
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->setHasOptionsMenu(Z)V

    .line 99
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->closeFragment()V

    .line 257
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0100

    if-ne v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->initializeRequest()V

    .line 262
    :cond_1
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->TICKET_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 278
    return-void
.end method

.method public setTicket(Lcom/neuron/mytelkom/model/Ticket;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->ticket:Lcom/neuron/mytelkom/model/Ticket;

    .line 57
    return-void
.end method

.method public setToView()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 130
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtNoProduk:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getProductNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtTicketStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getCompaintStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtDetilJenisPengaduan:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getComplaintDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtJenisPengaduan:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getComplaintCategoryDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtJenisTiket:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getTicketType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtKontakPelapor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getCustomerContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtLokasiPelapor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getCustomerLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->txtNamaPelapor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getTicket()Lcom/neuron/mytelkom/model/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Ticket;->getCustomerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method protected setTrackingData()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Lcom/neuron/mytelkom/adapter/TicketTrackingAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->listItem:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/adapter/TicketTrackingAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 240
    .local v0, ticketTrackingAdapter:Lcom/neuron/mytelkom/adapter/TicketTrackingAdapter;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->lvTrackingStatus:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    return-void
.end method
