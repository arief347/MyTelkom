.class public Lcom/neuron/mytelkom/HelpDetailActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "HelpDetailActivity.java"


# static fields
.field public static HELP_KEY:Ljava/lang/String;


# instance fields
.field private helpItem:Lcom/neuron/mytelkom/model/HelpItem;

.field private txtTitle:Landroid/widget/TextView;

.field private webContent:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "HelpItem"

    sput-object v0, Lcom/neuron/mytelkom/HelpDetailActivity;->HELP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static toHelpItem(Landroid/app/Activity;Lcom/neuron/mytelkom/model/HelpItem;)V
    .locals 2
    .parameter "activity"
    .parameter "helpItem"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/HelpDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/HelpDetailActivity;->HELP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public initialiazeIntent()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 51
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/HelpDetailActivity;->HELP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/HelpItem;

    iput-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->helpItem:Lcom/neuron/mytelkom/model/HelpItem;

    .line 52
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 43
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/HelpDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->txtTitle:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/HelpDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->webContent:Landroid/webkit/WebView;

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/HelpDetailActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 30
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->initializeViews()V

    .line 35
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->initialiazeIntent()V

    .line 36
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->setToView()V

    .line 37
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/neuron/mytelkom/HelpDetailActivity;->finish()V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setToView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 58
    iget-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->txtTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->helpItem:Lcom/neuron/mytelkom/model/HelpItem;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/HelpItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->webContent:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 61
    iget-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->webContent:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->webContent:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->helpItem:Lcom/neuron/mytelkom/model/HelpItem;

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/HelpItem;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/neuron/mytelkom/HelpDetailActivity;->webContent:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_0
.end method
