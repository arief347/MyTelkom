.class public Lcom/neuron/mytelkom/PtsnActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "PtsnActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static toPtsnActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/PtsnActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f030011

    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/PtsnActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/neuron/mytelkom/PtsnActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/neuron/mytelkom/PtsnActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v1, Lcom/neuron/mytelkom/fragment/PstnFragment;

    invoke-direct {v1}, Lcom/neuron/mytelkom/fragment/PstnFragment;-><init>()V

    .line 31
    .local v1, ptsnFragment:Lcom/neuron/mytelkom/fragment/PstnFragment;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/PtsnActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 32
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 33
    .local v2, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0a005c

    sget-object v4, Lcom/neuron/mytelkom/fragment/PstnFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    .end local v0           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    .end local v1           #ptsnFragment:Lcom/neuron/mytelkom/fragment/PstnFragment;
    .end local v2           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method
