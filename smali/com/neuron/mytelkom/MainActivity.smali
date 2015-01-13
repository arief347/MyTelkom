.class public Lcom/neuron/mytelkom/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/ListView;

.field private mDrawerTitle:Ljava/lang/CharSequence;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mTitle:Ljava/lang/CharSequence;

.field private navDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/NavDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private navMenuIcons:Landroid/content/res/TypedArray;

.field private navMenuTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/neuron/mytelkom/MainActivity;->displayView(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/neuron/mytelkom/MainActivity;->logout()V

    return-void
.end method

.method private displayView(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    const/4 v2, 0x0

    .line 182
    .local v2, fragmentTag:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_0
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 209
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 210
    const v4, 0x7f0a0049

    invoke-virtual {v3, v4, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 213
    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerList:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 214
    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 216
    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 221
    .end local v1           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    :goto_1
    return-void

    .line 184
    :pswitch_0
    new-instance v0, Lcom/neuron/mytelkom/fragment/DashboardFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/DashboardFragment;-><init>()V

    .line 185
    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    sget-object v2, Lcom/neuron/mytelkom/fragment/DashboardFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    new-instance v0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;-><init>()V

    .line 189
    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    sget-object v2, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    new-instance v0, Lcom/neuron/mytelkom/fragment/HelpFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;-><init>()V

    .line 193
    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    sget-object v2, Lcom/neuron/mytelkom/fragment/HelpFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 194
    goto :goto_0

    .line 200
    :pswitch_3
    invoke-direct {p0}, Lcom/neuron/mytelkom/MainActivity;->showLogoutDialog()V

    goto :goto_0

    .line 219
    :cond_0
    const-string v3, "MainActivity"

    const-string v4, "Error in creating fragment"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private logout()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/neuron/mytelkom/utils/Preference;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/utils/Preference;-><init>(Landroid/app/Activity;)V

    .line 260
    .local v0, preference:Lcom/neuron/mytelkom/utils/Preference;
    invoke-virtual {v0}, Lcom/neuron/mytelkom/utils/Preference;->clearCookies()V

    .line 261
    invoke-static {p0}, Lcom/neuron/mytelkom/LoginActivity;->toLoginActivity(Landroid/app/Activity;)V

    .line 262
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->finish()V

    .line 263
    return-void
.end method

.method private showLogoutDialog()V
    .locals 5

    .prologue
    .line 266
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Logout"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 274
    const-string v2, "Anda yakin logout dari aplikasi?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 275
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 276
    const-string v3, "Ya"

    new-instance v4, Lcom/neuron/mytelkom/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/MainActivity$2;-><init>(Lcom/neuron/mytelkom/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 283
    const-string v3, "Tidak"

    new-instance v4, Lcom/neuron/mytelkom/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/MainActivity$3;-><init>(Lcom/neuron/mytelkom/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 295
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void
.end method

.method public static toMainActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .parameter "newBase"

    .prologue
    .line 255
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;

    invoke-direct {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/MainActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 61
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuTitles:[Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuIcons:Landroid/content/res/TypedArray;

    .line 70
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 71
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerList:Landroid/widget/ListView;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navDrawerItems:Ljava/util/ArrayList;

    .line 77
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navDrawerItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/neuron/mytelkom/model/NavDrawerItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuTitles:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/neuron/mytelkom/model/NavDrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navDrawerItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/neuron/mytelkom/model/NavDrawerItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuTitles:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/neuron/mytelkom/model/NavDrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navDrawerItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/neuron/mytelkom/model/NavDrawerItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuTitles:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/neuron/mytelkom/model/NavDrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navDrawerItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/neuron/mytelkom/model/NavDrawerItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuTitles:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuIcons:Landroid/content/res/TypedArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/neuron/mytelkom/model/NavDrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->navMenuIcons:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;-><init>(Lcom/neuron/mytelkom/MainActivity;Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    new-instance v0, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/neuron/mytelkom/MainActivity;->navDrawerItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 95
    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->adapter:Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;

    .line 97
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/neuron/mytelkom/MainActivity;->adapter:Lcom/neuron/mytelkom/adapter/NavDrawerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 104
    new-instance v0, Lcom/neuron/mytelkom/MainActivity$1;

    iget-object v3, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 105
    const v4, 0x7f020027

    move-object v1, p0

    move-object v2, p0

    move v6, v5

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/neuron/mytelkom/MainActivity$1;-><init>(Lcom/neuron/mytelkom/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 104
    iput-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 121
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 123
    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0, v5}, Lcom/neuron/mytelkom/MainActivity;->displayView(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 151
    iget-object v1, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-static {p0}, Lcom/neuron/mytelkom/ProfileActivity;->toProfileActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x7f0a0103
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 238
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 239
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/neuron/mytelkom/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {p0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/neuron/mytelkom/MainActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method
