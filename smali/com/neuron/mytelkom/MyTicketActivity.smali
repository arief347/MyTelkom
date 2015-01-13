.class public Lcom/neuron/mytelkom/MyTicketActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "MyTicketActivity.java"


# static fields
.field public static KEY_PRODUCT_NAME:Ljava/lang/String;

.field public static KEY_TGL_AKHIR:Ljava/lang/String;

.field public static KEY_TGL_AWAL:Ljava/lang/String;


# instance fields
.field productName:Ljava/lang/String;

.field tglAkhir:Ljava/lang/String;

.field tglAwal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "tglAwal"

    sput-object v0, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_TGL_AWAL:Ljava/lang/String;

    .line 15
    const-string v0, "tglAkhir"

    sput-object v0, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_TGL_AKHIR:Ljava/lang/String;

    .line 16
    const-string v0, "productName"

    sput-object v0, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_PRODUCT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static toMyTicketFragmentActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "productName"
    .parameter "tglMulai"
    .parameter "tglAkhir"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/MyTicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    sget-object v1, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_TGL_AKHIR:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    sget-object v1, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_TGL_AWAL:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/MyTicketActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MyTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MyTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MyTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neuron/mytelkom/MyTicketActivity;->productName:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MyTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_TGL_AKHIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neuron/mytelkom/MyTicketActivity;->tglAkhir:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MyTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/neuron/mytelkom/MyTicketActivity;->KEY_TGL_AWAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/neuron/mytelkom/MyTicketActivity;->tglAwal:Ljava/lang/String;

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v1, Lcom/neuron/mytelkom/fragment/MyTicketFragment;

    invoke-direct {v1}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;-><init>()V

    .line 35
    .local v1, myTicketFragment:Lcom/neuron/mytelkom/fragment/MyTicketFragment;
    iget-object v3, p0, Lcom/neuron/mytelkom/MyTicketActivity;->productName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->setProductName(Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/neuron/mytelkom/MyTicketActivity;->tglAwal:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->setTglDari(Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/neuron/mytelkom/MyTicketActivity;->tglAkhir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->setTglHingga(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MyTicketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 40
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 41
    .local v2, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0a004c

    sget-object v4, Lcom/neuron/mytelkom/fragment/MyTicketFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    .end local v0           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    .end local v1           #myTicketFragment:Lcom/neuron/mytelkom/fragment/MyTicketFragment;
    .end local v2           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method
