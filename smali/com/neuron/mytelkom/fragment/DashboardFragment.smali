.class public Lcom/neuron/mytelkom/fragment/DashboardFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DashboardFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private lvDashboard:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "DashboardFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DashboardFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 72
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DashboardFragment;->lvDashboard:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DashboardFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DashboardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->setToView()V

    .line 55
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->initializeActions()V

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    const v0, 0x7f090003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
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

    .line 36
    const v1, 0x7f030027

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DashboardFragment;->lvDashboard:Landroid/widget/ListView;

    .line 39
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 42
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 44
    invoke-virtual {p0, v3}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->setHasOptionsMenu(Z)V

    .line 46
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0103

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/neuron/mytelkom/ProfileActivity;->toProfileActivity(Landroid/app/Activity;)V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setToView()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 63
    new-instance v0, Lcom/neuron/mytelkom/adapter/DashboardAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neuron/mytelkom/adapter/DashboardAdapter;-><init>(Landroid/app/Activity;)V

    .line 64
    .local v0, dashboardAdapter:Lcom/neuron/mytelkom/adapter/DashboardAdapter;
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DashboardFragment;->lvDashboard:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method protected toItemPositionSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/neuron/mytelkom/ConferenceActivity;->toConferenceActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/neuron/mytelkom/PtsnActivity;->toPtsnActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/neuron/mytelkom/MyBroadbandActivity;->toMyBroadbandActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/neuron/mytelkom/FlexiActivity;->toFlexiActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/neuron/mytelkom/ImeActivity;->toImeFragment(Landroid/app/Activity;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
