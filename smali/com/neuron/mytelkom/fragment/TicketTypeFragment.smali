.class public Lcom/neuron/mytelkom/fragment/TicketTypeFragment;
.super Lcom/neuron/mytelkom/base/BaseFragment;
.source "TicketTypeFragment.java"


# static fields
.field public static FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private btnAkhir:Landroid/widget/Button;

.field private btnMulai:Landroid/widget/Button;

.field private edtTglAkhir:Landroid/widget/EditText;

.field private edtTglMulai:Landroid/widget/EditText;

.field private lvItem:Landroid/widget/ListView;

.field private mDateSetListenerAkhir:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDateSetListenerMulai:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "TicketTypeFragment"

    sput-object v0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseFragment;-><init>()V

    .line 130
    new-instance v0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$1;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$1;-><init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDateSetListenerMulai:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 161
    new-instance v0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$2;-><init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDateSetListenerAkhir:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I

    return-void
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    return-void
.end method

.method static synthetic access$10(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    return v0
.end method

.method static synthetic access$11(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDateSetListenerMulai:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    return-void
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->updateDisplayMulai()V

    return-void
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->updateDisplayAkhir()V

    return-void
.end method

.method static synthetic access$5(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglAkhir:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDateSetListenerAkhir:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I

    return v0
.end method

.method static synthetic access$9(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    return v0
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 194
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I

    .line 195
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    .line 196
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    .line 197
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->updateDisplayAkhir()V

    .line 198
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->updateDisplayMulai()V

    .line 200
    return-void
.end method

.method private updateDisplayAkhir()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, year:Ljava/lang/String;
    iget v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, month:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    if-ge v3, v5, :cond_1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, day:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void

    .line 178
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #month:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #month:Ljava/lang/String;
    goto :goto_0

    .line 182
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #day:Ljava/lang/String;
    goto :goto_1
.end method

.method private updateDisplayMulai()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mYear:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, year:Ljava/lang/String;
    iget v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_0

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, month:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    if-ge v3, v5, :cond_1

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, day:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void

    .line 147
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #month:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #month:Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->mDay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #day:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public initializeActions()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->initializeActions()V

    .line 81
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->lvItem:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$3;-><init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->btnAkhir:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$4;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$4;-><init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->btnMulai:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment$5;-><init>(Lcom/neuron/mytelkom/fragment/TicketTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->setToView()V

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->initializeActions()V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a00fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->lvItem:Landroid/widget/ListView;

    .line 48
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, header:Landroid/view/View;
    const v2, 0x7f0a00ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->btnAkhir:Landroid/widget/Button;

    .line 50
    const v2, 0x7f0a00cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->btnMulai:Landroid/widget/Button;

    .line 51
    const v2, 0x7f0a00cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglAkhir:Landroid/widget/EditText;

    .line 52
    const v2, 0x7f0a00cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;

    .line 54
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->lvItem:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 56
    return-object v1
.end method

.method public setToView()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseFragment;->setToView()V

    .line 71
    invoke-direct {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->initDate()V

    .line 72
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglAkhir:Landroid/widget/EditText;

    invoke-static {}, Lcom/neuron/mytelkom/utils/Utils;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;

    invoke-static {}, Lcom/neuron/mytelkom/utils/Utils;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->lvItem:Landroid/widget/ListView;

    new-instance v1, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;

    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    return-void
.end method

.method protected toMyTicket(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/adapter/TicketTypeAdapter;->productName:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 125
    iget-object v2, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglMulai:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/neuron/mytelkom/fragment/TicketTypeFragment;->edtTglAkhir:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v0, v1, v2, v3}, Lcom/neuron/mytelkom/MyTicketActivity;->toMyTicketFragmentActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
