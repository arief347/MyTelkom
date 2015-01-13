.class public Lcom/neuron/mytelkom/SelectCityActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "SelectCityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;
    }
.end annotation


# static fields
.field public static KEY_CITY_SELECTED:Ljava/lang/String;

.field public static REQUEST_CODE:I

.field public static RESULT_CODE:I


# instance fields
.field private listCity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lvSelectCity:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x14

    sput v0, Lcom/neuron/mytelkom/SelectCityActivity;->REQUEST_CODE:I

    .line 29
    const/16 v0, 0x1e

    sput v0, Lcom/neuron/mytelkom/SelectCityActivity;->RESULT_CODE:I

    .line 30
    const-string v0, "city"

    sput-object v0, Lcom/neuron/mytelkom/SelectCityActivity;->KEY_CITY_SELECTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/SelectCityActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/neuron/mytelkom/SelectCityActivity;->listCity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/SelectCityActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/neuron/mytelkom/SelectCityActivity;->lvSelectCity:Landroid/widget/ListView;

    return-object v0
.end method

.method public static toSelectCity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/SampleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/neuron/mytelkom/SelectCityActivity;->REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 75
    iget-object v0, p0, Lcom/neuron/mytelkom/SelectCityActivity;->lvSelectCity:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/SelectCityActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/SelectCityActivity$1;-><init>(Lcom/neuron/mytelkom/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeLibs()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/SelectCityActivity;->listCity:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public initializeRequest()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeRequest()V

    .line 92
    new-instance v0, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;-><init>(Lcom/neuron/mytelkom/SelectCityActivity;Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/SelectCityActivity$LoadCityData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 61
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SelectCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/neuron/mytelkom/SelectCityActivity;->lvSelectCity:Landroid/widget/ListView;

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/SelectCityActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "<font color=white>Select City</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->initializeViews()V

    .line 45
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->initializeRequest()V

    .line 46
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->setToView()V

    .line 47
    invoke-virtual {p0}, Lcom/neuron/mytelkom/SelectCityActivity;->initializeActions()V

    .line 48
    return-void
.end method

.method public setToView()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 68
    return-void
.end method
