.class public Lcom/neuron/mytelkom/fragment/MyTicketFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "MyTicketFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private ProductName:Ljava/lang/String;

.field private indicator:Landroid/widget/ProgressBar;

.field private listItem:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/neuron/mytelkom/model/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private lvItem:Landroid/widget/ListView;

.field private tglDari:Ljava/lang/String;

.field private tglHingga:Ljava/lang/String;

.field private txtTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "MyTicketFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/MyTicketFragment;Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->txtTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 226
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 227
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 228
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 229
    return-void
.end method


# virtual methods
.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->ProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getTglDari()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->tglDari:Ljava/lang/String;

    return-object v0
.end method

.method public getTglHingga()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->tglHingga:Ljava/lang/String;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 123
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/MyTicketFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeLibs()V

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;

    .line 109
    return-void
.end method

.method public initializeRequest()V
    .locals 6

    .prologue
    .line 173
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeRequest()V

    .line 174
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->indicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 175
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 177
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v2, requestedParam:Lorg/json/JSONObject;
    const-string v3, "telkomID"

    iget-object v4, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v4}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v3, "productType"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v3, "dateStart"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getTglDari()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v3, "dateEnd"

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getTglHingga()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, param:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 188
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v3, "param"

    invoke-virtual {v1, v3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "https://my.telkom.co.id/api/MobileMyTicket.php?api="

    new-instance v5, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;

    invoke-direct {v5, p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/MyTicketFragment;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0           #param:Ljava/lang/String;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    .end local v2           #requestedParam:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->setToView()V

    .line 100
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->initializeRequest()V

    .line 101
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->initializeActions()V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->initializeLibs()V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 138
    const v0, 0x7f090004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
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

    .line 79
    const v1, 0x7f03002a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->lvItem:Landroid/widget/ListView;

    .line 81
    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->indicator:Landroid/widget/ProgressBar;

    .line 82
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->txtTitle:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 87
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->setHasOptionsMenu(Z)V

    .line 92
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0a0100

    if-ne v1, v2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->initializeRequest()V

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .parameter "productName"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->ProductName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTglDari(Ljava/lang/String;)V
    .locals 0
    .parameter "tglDari"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->tglDari:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTglHingga(Ljava/lang/String;)V
    .locals 0
    .parameter "tglHingga"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->tglHingga:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setToView()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 115
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->txtTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dari : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getTglDari()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hingga "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getTglHingga()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method protected toDetilTicket(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 160
    new-instance v0, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;

    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;-><init>()V

    .line 161
    .local v0, detilTicketFragment:Lcom/neuron/mytelkom/fragment/DetilTicketFragment;
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->listItem:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/model/Ticket;

    invoke-virtual {v0, v2}, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->setTicket(Lcom/neuron/mytelkom/model/Ticket;)V

    .line 163
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 164
    .local v1, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 165
    const v2, 0x7f0a004c

    sget-object v3, Lcom/neuron/mytelkom/fragment/DetilTicketFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 167
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 168
    return-void
.end method
