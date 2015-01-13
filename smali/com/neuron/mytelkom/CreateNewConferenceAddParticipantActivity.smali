.class public Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "CreateNewConferenceAddParticipantActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;
    }
.end annotation


# static fields
.field public static KEY_ATTENDEE:Ljava/lang/String;

.field public static KEY_POSITION:Ljava/lang/String;

.field public static KEY_TYPE:Ljava/lang/String;


# instance fields
.field attendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;

.field private btnAddPeserta:Landroid/widget/Button;

.field private btnEdit:Landroid/widget/Button;

.field private btnHapus:Landroid/widget/Button;

.field private edtEmail:Landroid/widget/EditText;

.field private edtName:Landroid/widget/EditText;

.field private edtNoHp:Landroid/widget/EditText;

.field private lnEditParticipant:Landroid/widget/LinearLayout;

.field position:I

.field type:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "type"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_TYPE:Ljava/lang/String;

    const-string v0, "attendee"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_ATTENDEE:Ljava/lang/String;

    const-string v0, "posisi"

    sput-object v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_POSITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->position:I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtNoHp:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;Lcom/neuron/mytelkom/model/ConferenceAttendees;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->showDeleteDialog(Lcom/neuron/mytelkom/model/ConferenceAttendees;)V

    return-void
.end method

.method private showDeleteDialog(Lcom/neuron/mytelkom/model/ConferenceAttendees;)V
    .locals 5
    .parameter "attendees"

    .prologue
    .line 186
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Konfirmasi"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Anda yakin menghapus perserta "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dari conference ini?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 195
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    const-string v3, "Ya"

    new-instance v4, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$4;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 207
    const-string v3, "Tidak"

    new-instance v4, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$5;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$5;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 219
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method public static toCreateNewConferenceAddParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;)V
    .locals 2
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    sget v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->ADD_PARTICIPANT_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method

.method public static toCreateNewConferenceAddParticipantActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;Lcom/neuron/mytelkom/model/ConferenceAttendees;I)V
    .locals 2
    .parameter "activity"
    .parameter "type"
    .parameter "attendees"
    .parameter "position"

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_ATTENDEE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    sget v1, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->ADD_PARTICIPANT_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
.end method


# virtual methods
.method public initialiazeIntent()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 62
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->type:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    .line 63
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_ATTENDEE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/ConferenceAttendees;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->attendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->KEY_POSITION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->position:I

    .line 65
    return-void
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 104
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnAddPeserta:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$1;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnEdit:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$2;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnHapus:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$3;-><init>(Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public initializeViews()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 72
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtEmail:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtName:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtNoHp:Landroid/widget/EditText;

    .line 76
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnAddPeserta:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnEdit:Landroid/widget/Button;

    .line 78
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnHapus:Landroid/widget/Button;

    .line 80
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->lnEditParticipant:Landroid/widget/LinearLayout;

    .line 82
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->type:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->EDIT:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->lnEditParticipant:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->btnAddPeserta:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 47
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->initialiazeIntent()V

    .line 52
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->initializeViews()V

    .line 53
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->setToView()V

    .line 54
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->initializeActions()V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->finish()V

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setToView()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 92
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->type:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    sget-object v1, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;->EDIT:Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType;

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->attendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->attendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->edtNoHp:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceAddParticipantActivity;->attendees:Lcom/neuron/mytelkom/model/ConferenceAttendees;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/ConferenceAttendees;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method
