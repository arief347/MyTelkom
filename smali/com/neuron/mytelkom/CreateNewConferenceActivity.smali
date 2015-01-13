.class public Lcom/neuron/mytelkom/CreateNewConferenceActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "CreateNewConferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;
    }
.end annotation


# static fields
.field public static CONFERENCE_FLAG:Ljava/lang/String; = null

.field public static CONFERENCE_ITEM:Ljava/lang/String; = null

.field static final DATE_DIALOG_ID:I = 0x0

.field static final TIME_DIALOG:I = 0x3e7


# instance fields
.field private btnInputDataPeserta:Landroid/widget/Button;

.field private btnJam:Landroid/widget/Button;

.field private btnTanggal:Landroid/widget/Button;

.field private conferenceName:[Ljava/lang/String;

.field private conferenceType:[Ljava/lang/String;

.field private durationHours:[Ljava/lang/String;

.field private durationMinutes:[Ljava/lang/String;

.field private edtJam:Landroid/widget/EditText;

.field private edtSubject:Landroid/widget/EditText;

.field private edtTanggal:Landroid/widget/EditText;

.field private edtTotal:Landroid/widget/EditText;

.field flag:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

.field private hourStart:I

.field private isModify:Z

.field item:Lcom/neuron/mytelkom/model/ConferenceItem;

.field private lnConfereceTime:Landroid/widget/LinearLayout;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field private minuteStart:I

.field private spnDurasiJam:Landroid/widget/Spinner;

.field private spnDurasiMenit:Landroid/widget/Spinner;

.field private spnJenis:Landroid/widget/Spinner;

.field private timePickerListenerGetTime:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "flag"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_FLAG:Ljava/lang/String;

    .line 66
    const-string v0, "item"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    .line 50
    const-string v1, "Scheduled"

    aput-object v1, v0, v2

    const-string v1, "Created"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceType:[Ljava/lang/String;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    .line 54
    const-string v1, "Terjadwal"

    aput-object v1, v0, v2

    const-string v1, "Mulai Sekarang"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceName:[Ljava/lang/String;

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    .line 58
    const-string v1, "00"

    aput-object v1, v0, v2

    const-string v1, "01"

    aput-object v1, v0, v3

    const-string v1, "02"

    aput-object v1, v0, v4

    const-string v1, "03"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    .line 61
    new-array v0, v6, [Ljava/lang/String;

    .line 62
    const-string v1, "00"

    aput-object v1, v0, v2

    const-string v1, "15"

    aput-object v1, v0, v3

    const-string v1, "30"

    aput-object v1, v0, v4

    const-string v1, "45"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    .line 67
    iput-boolean v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->isModify:Z

    .line 350
    new-instance v0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity$1;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 382
    new-instance v0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->timePickerListenerGetTime:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mYear:I

    return-void
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mMonth:I

    return-void
.end method

.method static synthetic access$10(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->lnConfereceTime:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtSubject:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$14(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$16(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$18(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDay:I

    return-void
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->hourStart:I

    return-void
.end method

.method static synthetic access$5(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->minuteStart:I

    return-void
.end method

.method static synthetic access$6(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->hourStart:I

    return v0
.end method

.method static synthetic access$7(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 400
    invoke-static {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->pad(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->minuteStart:I

    return v0
.end method

.method static synthetic access$9(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;

    return-object v0
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->dateConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, tgl:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mYear:I

    .line 323
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mMonth:I

    .line 324
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDay:I

    .line 325
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->updateDisplay()V

    .line 327
    return-void
.end method

.method private static pad(I)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 401
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 402
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toCreateNewConferenceParticipant(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;)V
    .locals 2
    .parameter "activity"
    .parameter "flag"

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 304
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 305
    return-void
.end method

.method public static toUpdateConference(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;Lcom/neuron/mytelkom/model/ConferenceItem;)V
    .locals 2
    .parameter "activity"
    .parameter "flag"
    .parameter "item"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 312
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 313
    return-void
.end method

.method private updateDisplay()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mYear:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, year:Ljava/lang/String;
    iget v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, month:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDay:I

    if-ge v3, v5, :cond_1

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, day:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 377
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 372
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    return-void

    .line 367
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #month:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #month:Ljava/lang/String;
    goto :goto_0

    .line 371
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #day:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected doCreateOrUpdateAction()V
    .locals 4

    .prologue
    .line 274
    iget-boolean v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->isModify:Z

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtSubject:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSubject(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setdHours(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setdMinutes(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceHour(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceTime(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setMaxAttendee(I)V

    .line 281
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/neuron/mytelkom/model/ConferenceItem;->setTypeConf(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;->MODIFY:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    .line 282
    invoke-static {p0, v1, v2}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->toCreateNewConferenceParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/ConferenceItem;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;)V

    .line 299
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-direct {v0}, Lcom/neuron/mytelkom/model/ConferenceItem;-><init>()V

    .line 287
    .local v0, conferenceItem:Lcom/neuron/mytelkom/model/ConferenceItem;
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtSubject:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setSubject(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setdHours(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setdMinutes(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceHour(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setConferenceTime(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setMaxAttendee(I)V

    .line 293
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/model/ConferenceItem;->setTypeConf(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    sget-object v2, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;->NEW:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    .line 296
    invoke-static {p0, v1, v2}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->toCreateNewConferenceParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/ConferenceItem;Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;)V

    goto :goto_0
.end method

.method public initialiazeIntent()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 95
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_FLAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->flag:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    .line 97
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->flag:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;->MODIFY:Lcom/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag;

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->isModify:Z

    .line 99
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->CONFERENCE_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceItem;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    .line 101
    :cond_0
    return-void
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 182
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity$3;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->btnInputDataPeserta:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity$4;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->btnJam:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$5;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity$5;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->btnTanggal:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceActivity$6;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity$6;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 108
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->btnJam:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->btnInputDataPeserta:Landroid/widget/Button;

    .line 110
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->btnTanggal:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtSubject:Landroid/widget/EditText;

    .line 115
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;

    .line 116
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;

    .line 117
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;

    .line 118
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    .line 119
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->lnConfereceTime:Landroid/widget/LinearLayout;

    .line 120
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/neuron/mytelkom/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 423
    const/16 v0, 0x28

    if-ne p2, v0, :cond_0

    .line 424
    const-string v0, "status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->finish()V

    .line 428
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 80
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->initialiazeIntent()V

    .line 85
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->initializeViews()V

    .line 86
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->setToView()V

    .line 87
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->initializeActions()V

    .line 88
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 331
    sparse-switch p1, :sswitch_data_0

    .line 346
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 333
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 334
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 335
    iget v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mYear:I

    iget v4, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mMonth:I

    iget v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->mDay:I

    move-object v1, p0

    .line 333
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 339
    :sswitch_1
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceHour()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, time:[Ljava/lang/String;
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 341
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->timePickerListenerGetTime:Landroid/app/TimePickerDialog$OnTimeSetListener;

    aget-object v1, v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 342
    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v1, p0

    .line 340
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->finish()V

    .line 415
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setToView()V
    .locals 8

    .prologue
    const v7, 0x109000a

    const v6, 0x1020014

    .line 125
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 127
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->initDate()V

    .line 129
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 132
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceName:[Ljava/lang/String;

    .line 129
    invoke-direct {v2, p0, v7, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 133
    .local v2, adapterType:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 135
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 137
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    .line 135
    invoke-direct {v0, p0, v7, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 138
    .local v0, adapterJam:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 142
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    .line 140
    invoke-direct {v1, p0, v7, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 143
    .local v1, adapterMenit:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 145
    iget-boolean v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->isModify:Z

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/ConferenceItem;->getDuration()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, duration:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 155
    :goto_1
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 162
    :goto_3
    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceType:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_5

    .line 170
    :goto_5
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtSubject:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTotal:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/ConferenceItem;->getListAttendees()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceHour()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtTanggal:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->dateConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v3           #duration:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_0
    return-void

    .line 149
    .restart local v3       #duration:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v3, v5

    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationHours:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiJam:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 148
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_3
    const/4 v5, 0x1

    aget-object v5, v3, v5

    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->durationMinutes:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnDurasiMenit:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 155
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 163
    :cond_5
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->conferenceType:[Ljava/lang/String;

    aget-object v5, v5, v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 164
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->item:Lcom/neuron/mytelkom/model/ConferenceItem;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ConferenceItem;->getConferenceState()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 165
    iget-object v5, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->spnJenis:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 162
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method
