.class public Lcom/neuron/mytelkom/fragment/DetilImeFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "DetilImeFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private KEY_IME:Ljava/lang/String;

.field private btnDelete:Landroid/widget/Button;

.field public imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;

.field private txtDescription:Landroid/widget/TextView;

.field private txtName:Landroid/widget/TextView;

.field private txtPackage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "DetilImeFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 21
    const-string v0, "ImeKey"

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->KEY_IME:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private closeFragment()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 101
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 102
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 103
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 104
    return-void
.end method


# virtual methods
.method public getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;

    return-object v0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 78
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/DetilImeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->KEY_IME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ImeiItem;

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->setImeiItem(Lcom/neuron/mytelkom/model/ImeiItem;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->setToView()V

    .line 61
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->initializeActions()V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 42
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->txtName:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->txtDescription:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->txtPackage:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->btnDelete:Landroid/widget/Button;

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->setHasOptionsMenu(Z)V

    .line 48
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->closeFragment()V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->KEY_IME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    return-void
.end method

.method public setImeiItem(Lcom/neuron/mytelkom/model/ImeiItem;)V
    .locals 0
    .parameter "imeiItem"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->imeiItem:Lcom/neuron/mytelkom/model/ImeiItem;

    .line 30
    return-void
.end method

.method public setToView()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 69
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->txtName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/ImeiItem;->getProductType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->txtDescription:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Description : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ImeiItem;->getProductDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->txtPackage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/DetilImeFragment;->getImeiItem()Lcom/neuron/mytelkom/model/ImeiItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neuron/mytelkom/model/ImeiItem;->getProductPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
