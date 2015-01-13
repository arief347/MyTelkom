.class public Lcom/neuron/mytelkom/ConferenceActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "ConferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static toConferenceActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/ConferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 16
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/ConferenceActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Lcom/neuron/mytelkom/fragment/ConferenceFragment;

    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/ConferenceFragment;-><init>()V

    .line 25
    .local v0, conferenceFragment:Lcom/neuron/mytelkom/fragment/ConferenceFragment;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ConferenceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 26
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 27
    .local v2, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0a0003

    .line 28
    sget-object v4, Lcom/neuron/mytelkom/fragment/ConferenceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 29
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 32
    .end local v0           #conferenceFragment:Lcom/neuron/mytelkom/fragment/ConferenceFragment;
    .end local v1           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    .end local v2           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method
