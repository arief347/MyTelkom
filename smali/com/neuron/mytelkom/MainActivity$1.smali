.class Lcom/neuron/mytelkom/MainActivity$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/MainActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/MainActivity$1;->this$0:Lcom/neuron/mytelkom/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 104
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity$1;->this$0:Lcom/neuron/mytelkom/MainActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/MainActivity;->invalidateOptionsMenu()V

    .line 113
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .parameter "drawerView"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity$1;->this$0:Lcom/neuron/mytelkom/MainActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 118
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity$1;->this$0:Lcom/neuron/mytelkom/MainActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/MainActivity;->invalidateOptionsMenu()V

    .line 119
    return-void
.end method
