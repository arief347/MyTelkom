.class public Lcom/neuron/mytelkom/EditProfileActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "EditProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;
    }
.end annotation


# static fields
.field static final DATE_DIALOG_ID:I

.field public static KEY_USER:Ljava/lang/String;


# instance fields
.field private auKota:Landroid/widget/AutoCompleteTextView;

.field private btnPilihTanggal:Landroid/widget/Button;

.field private btnSubmit:Landroid/widget/Button;

.field private edtAlamat:Landroid/widget/EditText;

.field private edtIbuKandung:Landroid/widget/EditText;

.field private edtKodePos:Landroid/widget/EditText;

.field private edtKotaKelahiran:Landroid/widget/EditText;

.field private edtMobilePhone:Landroid/widget/EditText;

.field private edtNamaLengkap:Landroid/widget/EditText;

.field private edtNoFlexi:Landroid/widget/EditText;

.field private edtNoIdentitas:Landroid/widget/EditText;

.field private edtPropinsi:Landroid/widget/EditText;

.field private edtTglLahir:Landroid/widget/EditText;

.field public education:[Ljava/lang/String;

.field public hobby:[Ljava/lang/String;

.field public identityType:[Ljava/lang/String;

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

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field public pekerjaan:[Ljava/lang/String;

.field private rbMan:Landroid/widget/RadioButton;

.field private rbSex:Landroid/widget/RadioGroup;

.field private rbWoman:Landroid/widget/RadioButton;

.field private spnHobby:Landroid/widget/Spinner;

.field private spnIdentitas:Landroid/widget/Spinner;

.field private spnPendidikan:Landroid/widget/Spinner;

.field private spnProfesi:Landroid/widget/Spinner;

.field public user:Lcom/neuron/mytelkom/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "user"

    sput-object v0, Lcom/neuron/mytelkom/EditProfileActivity;->KEY_USER:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->listCity:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string v1, "--Pilih--"

    aput-object v1, v0, v3

    const-string v1, "KTP"

    aput-object v1, v0, v4

    const-string v1, "SIM"

    aput-object v1, v0, v5

    const-string v1, "Passport"

    aput-object v1, v0, v6

    const-string v1, "Lain-lain"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->identityType:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string v1, "--Pilih--"

    aput-object v1, v0, v3

    const-string v1, "Tidak Tamat SD"

    aput-object v1, v0, v4

    const-string v1, "SD (atau sederajat)"

    aput-object v1, v0, v5

    const-string v1, "SLTP (atau sederajat)"

    aput-object v1, v0, v6

    .line 64
    const-string v1, "SLTA (atau sederajat)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D1/D2/D3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "S2/S3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->education:[Ljava/lang/String;

    .line 67
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string v1, "--Pilih--"

    aput-object v1, v0, v3

    const-string v1, "Kesehatan dan Kebugaran"

    aput-object v1, v0, v4

    const-string v1, "Bisnis dan Dunia Usaha"

    aput-object v1, v0, v5

    const-string v1, "Rumah dan Keluarga"

    aput-object v1, v0, v6

    .line 69
    const-string v1, "Olah Raga"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Wisata"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Rohani"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Pengelolaan Keuangan"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Hiburan (Musik/Film)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Komputer dan Internet"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 70
    const-string v2, "Multilevel Marketing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Otomotif"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Lain-lain"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->hobby:[Ljava/lang/String;

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const-string v1, "--Pilih--"

    aput-object v1, v0, v3

    const-string v1, "Pelajar/Mahasiswa"

    aput-object v1, v0, v4

    const-string v1, "PNS/TNK/POLRI"

    aput-object v1, v0, v5

    const-string v1, "BUMN/BUMD"

    aput-object v1, v0, v6

    const-string v1, "Wiraswasta"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 75
    const-string v2, "Pensiunan/Purnawirawan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dokter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Petani/Nelayan/Montir"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Notari/Pengacara/Konsultan"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 76
    const-string v2, "Lain-lainnya"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->pekerjaan:[Ljava/lang/String;

    .line 390
    new-instance v0, Lcom/neuron/mytelkom/EditProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/EditProfileActivity$1;-><init>(Lcom/neuron/mytelkom/EditProfileActivity;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/EditProfileActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mYear:I

    return-void
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/EditProfileActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mMonth:I

    return-void
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/EditProfileActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDay:I

    return-void
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/EditProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$4(Lcom/neuron/mytelkom/EditProfileActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->listCity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/neuron/mytelkom/EditProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->bindDataToView()V

    return-void
.end method

.method private bindDataToView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x109000a

    const v8, 0x1020014

    .line 157
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 158
    const v5, 0x1090003

    .line 159
    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->listCity:Ljava/util/ArrayList;

    .line 157
    invoke-direct {v0, p0, v5, v8, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 160
    .local v0, adapterCity:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->auKota:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 165
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->identityType:[Ljava/lang/String;

    .line 162
    invoke-direct {v2, p0, v9, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 167
    .local v2, adapterIdentitas:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnIdentitas:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnIdentitas:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getPersonalIdType()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "0"

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 170
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 173
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->hobby:[Ljava/lang/String;

    .line 170
    invoke-direct {v1, p0, v9, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 175
    .local v1, adapterHobby:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnHobby:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnHobby:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getHobby()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "0"

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 178
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 181
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->education:[Ljava/lang/String;

    .line 178
    invoke-direct {v4, p0, v9, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 183
    .local v4, adapterPendidikan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnPendidikan:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnPendidikan:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getEducation()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "0"

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 186
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 189
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->pekerjaan:[Ljava/lang/String;

    .line 186
    invoke-direct {v3, p0, v9, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 191
    .local v3, adapterPekerjaan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnProfesi:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 192
    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnProfesi:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getOccupation()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "0"

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtAlamat:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtIbuKandung:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getMotherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtKodePos:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->auKota:Landroid/widget/AutoCompleteTextView;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtKotaKelahiran:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getPlaceBday()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtMobilePhone:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getMobilePhone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNamaLengkap:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNoFlexi:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getFlexiNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNoIdentitas:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getPersonalId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtPropinsi:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtTglLahir:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/User;->getBirthDay()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->dateConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getGender()Ljava/lang/String;

    move-result-object v5

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbMan:Landroid/widget/RadioButton;

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 208
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbWoman:Landroid/widget/RadioButton;

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    :goto_4
    return-void

    .line 168
    .end local v1           #adapterHobby:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3           #adapterPekerjaan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4           #adapterPendidikan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getPersonalIdType()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 176
    .restart local v1       #adapterHobby:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getHobby()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 184
    .restart local v4       #adapterPendidikan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getEducation()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 192
    .restart local v3       #adapterPekerjaan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_3
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/model/User;->getOccupation()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 210
    :cond_4
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbMan:Landroid/widget/RadioButton;

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 211
    iget-object v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbWoman:Landroid/widget/RadioButton;

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/User;->getBirthDay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neuron/mytelkom/utils/Utils;->dateConversion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, tgl:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mYear:I

    .line 372
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mMonth:I

    .line 373
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDay:I

    .line 374
    invoke-direct {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->updateDisplay()V

    .line 376
    return-void
.end method

.method public static toEditProfileActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/User;)V
    .locals 2
    .parameter "activity"
    .parameter "user"

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/EditProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/EditProfileActivity;->KEY_USER:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method

.method private updateDisplay()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mYear:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, year:Ljava/lang/String;
    iget v3, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mMonth:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_0

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, month:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDay:I

    if-ge v3, v5, :cond_1

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, day:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtTglLahir:Landroid/widget/EditText;

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 416
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 417
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 412
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    return-void

    .line 407
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #month:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #month:Ljava/lang/String;
    goto :goto_0

    .line 411
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #day:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 335
    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 337
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, object:Lorg/json/JSONObject;
    const-string v2, "rescode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "Update Profile Berhasil"

    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->finish()V

    .line 350
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #object:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 344
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v1           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public initialiazeIntent()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 140
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/EditProfileActivity;->KEY_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/User;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    .line 141
    return-void
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 222
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->btnPilihTanggal:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/EditProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/EditProfileActivity$2;-><init>(Lcom/neuron/mytelkom/EditProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->btnSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/EditProfileActivity$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/EditProfileActivity$3;-><init>(Lcom/neuron/mytelkom/EditProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method public initializeLibs()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeLibs()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->listCity:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 110
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtAlamat:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtIbuKandung:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtKodePos:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->auKota:Landroid/widget/AutoCompleteTextView;

    .line 114
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtKotaKelahiran:Landroid/widget/EditText;

    .line 115
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtMobilePhone:Landroid/widget/EditText;

    .line 116
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNamaLengkap:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNoFlexi:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNoIdentitas:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtPropinsi:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->edtTglLahir:Landroid/widget/EditText;

    .line 122
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbWoman:Landroid/widget/RadioButton;

    .line 123
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbMan:Landroid/widget/RadioButton;

    .line 124
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->rbSex:Landroid/widget/RadioGroup;

    .line 126
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnHobby:Landroid/widget/Spinner;

    .line 127
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnIdentitas:Landroid/widget/Spinner;

    .line 128
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnPendidikan:Landroid/widget/Spinner;

    .line 129
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->spnProfesi:Landroid/widget/Spinner;

    .line 131
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->btnSubmit:Landroid/widget/Button;

    .line 132
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity;->btnPilihTanggal:Landroid/widget/Button;

    .line 133
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/neuron/mytelkom/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/EditProfileActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 88
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->initializeLibs()V

    .line 93
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->initializeViews()V

    .line 94
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->initialiazeIntent()V

    .line 95
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->setToView()V

    .line 96
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->initializeActions()V

    .line 97
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 380
    packed-switch p1, :pswitch_data_0

    .line 386
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 382
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 383
    iget-object v2, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 384
    iget v3, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mYear:I

    iget v4, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mMonth:I

    iget v5, p0, Lcom/neuron/mytelkom/EditProfileActivity;->mDay:I

    move-object v1, p0

    .line 382
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->finish()V

    .line 477
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setToView()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 148
    invoke-direct {p0}, Lcom/neuron/mytelkom/EditProfileActivity;->initDate()V

    .line 150
    new-instance v0, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;

    invoke-direct {v0, p0}, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;-><init>(Lcom/neuron/mytelkom/EditProfileActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/EditProfileActivity$LoadCityData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method

.method protected updateProfileData()V
    .locals 30

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNamaLengkap:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, namaLengkap:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtIbuKandung:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 245
    .local v13, namaIbuKandung:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtTglLahir:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 246
    .local v22, tanggalLahir:Ljava/lang/String;
    const-string v27, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 247
    .local v24, tglLhr:[Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v28, 0x2

    aget-object v28, v24, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v28, v24, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v28, v24, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 248
    .local v23, tglBday:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtKotaKelahiran:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, kotaLahir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNoIdentitas:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, noIdentitas:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtAlamat:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, alamat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->auKota:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, kota:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtPropinsi:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 253
    .local v21, propinsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtKodePos:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, kodePos:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtNoFlexi:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, nomorFlexi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->edtMobilePhone:Landroid/widget/EditText;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 256
    .local v12, mobilePhone:Ljava/lang/String;
    const-string v8, ""

    .line 258
    .local v8, jenisKelamin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->rbMan:Landroid/widget/RadioButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 259
    const-string v8, "L"

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->rbWoman:Landroid/widget/RadioButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 263
    const-string v8, "P"

    .line 266
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->spnIdentitas:Landroid/widget/Spinner;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 267
    .local v26, tipeIdentitas:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->spnPendidikan:Landroid/widget/Spinner;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 268
    .local v25, tingkatPendidikan:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->spnHobby:Landroid/widget/Spinner;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, hobby:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->spnProfesi:Landroid/widget/Spinner;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 272
    .local v20, profesi:Ljava/lang/String;
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 273
    .local v17, object:Lorg/json/JSONObject;
    const-string v27, "telkomid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v27, "fullname"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v27, "identity_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v27, "mothername"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v27, "identity_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v27, "gender"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v27, "bod"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v27, "bodplace"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v27, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v27, "city"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v27, "province"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v27, "postcode"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v27, "mobilephone"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v27, "flexi"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v27, "user_education"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v27, "user_interest"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v27, "user_work"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    .line 293
    .local v19, postParam:Ljava/lang/String;
    new-instance v18, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v18 .. v18}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 294
    .local v18, params:Lcom/loopj/android/http/RequestParams;
    invoke-static/range {v19 .. v19}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 295
    const-string v27, "param"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {v18 .. v18}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 298
    new-instance v5, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 299
    .local v5, dialog:Landroid/app/ProgressDialog;
    const-string v27, "Update Profile"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    const-string v27, "Harap Tunggu..."

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 301
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 302
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/neuron/mytelkom/EditProfileActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    move-object/from16 v27, v0

    const-string v28, "https://my.telkom.co.id/api/MTprofileUpdate.php?api="

    new-instance v29, Lcom/neuron/mytelkom/EditProfileActivity$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/neuron/mytelkom/EditProfileActivity$4;-><init>(Lcom/neuron/mytelkom/EditProfileActivity;Landroid/app/ProgressDialog;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v5           #dialog:Landroid/app/ProgressDialog;
    .end local v17           #object:Lorg/json/JSONObject;
    .end local v18           #params:Lcom/loopj/android/http/RequestParams;
    .end local v19           #postParam:Ljava/lang/String;
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v6

    .line 327
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method
