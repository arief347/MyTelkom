.class public Lcom/neuron/mytelkom/CreateTicketActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "CreateTicketActivity.java"


# static fields
.field public static KEY_PRODUCT:Ljava/lang/String;

.field public static KEY_PRODUCT_TYPE:Ljava/lang/String;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSubmit:Landroid/widget/Button;

.field dialog:Landroid/app/ProgressDialog;

.field private edtEmail:Landroid/widget/EditText;

.field private edtKeluhan:Landroid/widget/EditText;

.field private edtKontak:Landroid/widget/EditText;

.field private edtLokasi:Landroid/widget/EditText;

.field private edtNoProduct:Landroid/widget/EditText;

.field private edtPelapor:Landroid/widget/EditText;

.field private isReg23:Z

.field private listLevel1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ComplaitLevel;",
            ">;"
        }
    .end annotation
.end field

.field private listLevel2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/ComplaitLevel;",
            ">;"
        }
    .end annotation
.end field

.field private lnPengaduanDetilLevel1:Landroid/widget/LinearLayout;

.field private lnPengaduanDetilLevel2:Landroid/widget/LinearLayout;

.field public product:Lcom/neuron/mytelkom/model/Product;

.field public productType:Ljava/lang/String;

.field reg:Ljava/lang/String;

.field private spnJenisPengaduan:Landroid/widget/Spinner;

.field private spnJenisPengaduanDetail:Landroid/widget/Spinner;

.field private spnJenisTiket:Landroid/widget/Spinner;

.field public type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Product"

    sput-object v0, Lcom/neuron/mytelkom/CreateTicketActivity;->KEY_PRODUCT:Ljava/lang/String;

    .line 43
    const-string v0, "ProductType"

    sput-object v0, Lcom/neuron/mytelkom/CreateTicketActivity;->KEY_PRODUCT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->isReg23:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel1:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel2:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/CreateTicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->postComplaint()V

    return-void
.end method

.method private getRegionalCode(Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "type"
    .parameter "mdn"

    .prologue
    .line 183
    const/4 v7, 0x0

    .line 185
    .local v7, regional:Ljava/lang/String;
    const/16 v9, 0x20

    new-array v8, v9, [[Ljava/lang/String;

    const/4 v9, 0x0

    .line 186
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "4"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "7"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "9"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "7"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "5"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "6"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 187
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "6"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 188
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "7"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 189
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "31"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 190
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "32"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 191
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "33"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 192
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "34"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x9

    .line 193
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "35"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xa

    .line 194
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "36"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "7"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xb

    .line 195
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "37"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "7"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xc

    .line 196
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "38"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "7"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xd

    .line 197
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "21"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xe

    .line 198
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "22"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0xf

    .line 199
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "23"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x10

    .line 200
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "24"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "4"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x11

    .line 201
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "27"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "4"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x12

    .line 202
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "28"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "4"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x13

    .line 203
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "29"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "4"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x14

    .line 204
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "260"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x15

    .line 205
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "261"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x16

    .line 206
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "262"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x17

    .line 207
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "263"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x18

    .line 208
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "264"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x19

    .line 209
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "265"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x1a

    .line 210
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "266"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x1b

    .line 211
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "267"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x1c

    .line 212
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "251"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x1d

    .line 213
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "254"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x1e

    .line 214
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "252"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    const/16 v9, 0x1f

    .line 215
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "253"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    aput-object v10, v8, v9

    .line 218
    .local v8, stackCode:[[Ljava/lang/String;
    const/4 v0, 0x0

    .line 219
    .local v0, area:Ljava/lang/String;
    const/4 v5, 0x0

    .line 221
    .local v5, areaCode:Ljava/lang/String;
    sget-object v9, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne p1, v9, :cond_1

    .line 222
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v9, "12"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "13"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 224
    :cond_0
    const-string v7, "REG23"

    .line 225
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->isReg23:Z

    .line 232
    :cond_1
    :goto_0
    sget-object v9, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-eq p1, v9, :cond_2

    sget-object v9, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne p1, v9, :cond_6

    .line 233
    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, area1:Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, area2:Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, area3:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, area4:Ljava/lang/String;
    const-string v9, "4"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "5"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "6"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 238
    const-string v9, "7"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "9"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 239
    :cond_3
    move-object v5, v1

    .line 246
    :goto_1
    const-string v9, "2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "3"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 247
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->isReg23:Z

    .line 250
    :cond_5
    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 252
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v9, v8

    if-lt v6, v9, :cond_b

    .line 259
    :goto_3
    iget-boolean v9, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->isReg23:Z

    if-nez v9, :cond_6

    .line 260
    iget-object v9, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->lnPengaduanDetilLevel1:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v9, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->lnPengaduanDetilLevel2:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    .end local v1           #area1:Ljava/lang/String;
    .end local v2           #area2:Ljava/lang/String;
    .end local v3           #area3:Ljava/lang/String;
    .end local v4           #area4:Ljava/lang/String;
    .end local v6           #i:I
    :cond_6
    return-object v7

    .line 227
    :cond_7
    const-string v7, "NONREG23"

    goto :goto_0

    .line 240
    .restart local v1       #area1:Ljava/lang/String;
    .restart local v2       #area2:Ljava/lang/String;
    .restart local v3       #area3:Ljava/lang/String;
    .restart local v4       #area4:Ljava/lang/String;
    :cond_8
    const-string v9, "25"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "26"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 241
    :cond_9
    move-object v5, v3

    .line 242
    goto :goto_1

    .line 243
    :cond_a
    move-object v5, v2

    goto :goto_1

    .line 253
    .restart local v6       #i:I
    :cond_b
    aget-object v9, v8, v6

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 254
    aget-object v9, v8, v6

    const/4 v10, 0x0

    aget-object v7, v9, v10

    .line 255
    goto :goto_3

    .line 252
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private postComplaint()V
    .locals 9

    .prologue
    .line 471
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 473
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 474
    .local v2, object:Lorg/json/JSONObject;
    const-string v6, "dataType"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v6, "dataSource"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 477
    .local v1, objParam:Lorg/json/JSONObject;
    const-string v6, "supportregphone"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->product:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/model/Product;->getProductNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string v6, "telkomID"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string v4, ""

    .line 480
    .local v4, prodType:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v7, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v6, v7, :cond_1

    .line 481
    const-string v4, "11"

    .line 488
    :cond_0
    :goto_0
    const-string v6, "supportprod"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v6, "supportregphone"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtNoProduct:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v7, "supportticket3"

    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel2:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisPengaduanDetail:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neuron/mytelkom/model/ComplaitLevel;

    invoke-virtual {v6}, Lcom/neuron/mytelkom/model/ComplaitLevel;->getLevel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v6, "supportdesc"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtKeluhan:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string v6, "supportprodtype"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->productType:Ljava/lang/String;

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    const-string v6, "supporttype"

    const-string v7, "ZSRT"

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v6, "supporttickettype"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v6, "supportsubtickettype"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v6, "supportlocation"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtLokasi:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v6, "supportname"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtPelapor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v6, "supportphone"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtKontak:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v6, "supportemail"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtEmail:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v6, "dataParameter"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v6, "transactionID"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v6, "statusCode"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v6, "strMessage"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, reqParams:Ljava/lang/String;
    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 513
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 514
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v3, v6, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/MTComplaint.php?api="

    new-instance v8, Lcom/neuron/mytelkom/CreateTicketActivity$5;

    invoke-direct {v8, p0}, Lcom/neuron/mytelkom/CreateTicketActivity$5;-><init>(Lcom/neuron/mytelkom/CreateTicketActivity;)V

    invoke-virtual {v6, v7, v3, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 538
    .end local v1           #objParam:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    .end local v4           #prodType:Ljava/lang/String;
    .end local v5           #reqParams:Ljava/lang/String;
    :goto_1
    return-void

    .line 482
    .restart local v1       #objParam:Lorg/json/JSONObject;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v4       #prodType:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v7, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v6, v7, :cond_2

    .line 483
    const-string v4, "1"

    .line 484
    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v7, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v6, v7, :cond_0

    .line 485
    const-string v4, "10000000"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 534
    .end local v1           #objParam:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v4           #prodType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static toCreateTicketActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateTicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static toCreateTicketActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/model/Product;Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;)V
    .locals 2
    .parameter "activity"
    .parameter "product"
    .parameter "type"

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/CreateTicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/CreateTicketActivity;->KEY_PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    sget-object v1, Lcom/neuron/mytelkom/CreateTicketActivity;->KEY_PRODUCT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 272
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    return-void
.end method


# virtual methods
.method protected fetchComplaintList(Ljava/lang/String;)V
    .locals 10
    .parameter "response"

    .prologue
    .line 348
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 349
    .local v6, obj:Lorg/json/JSONObject;
    const-string v8, "rescode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "00"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 350
    const-string v8, "resmsg"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 351
    .local v1, array:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 361
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel1:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 366
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 367
    const v8, 0x109000a

    .line 368
    const v9, 0x1020014

    .line 366
    invoke-direct {v0, p0, v8, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 371
    .local v0, adapterJenisPengaduan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisPengaduan:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 373
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel1:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel1:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neuron/mytelkom/model/ComplaitLevel;

    invoke-virtual {v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->getLevel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/neuron/mytelkom/CreateTicketActivity;->getLevel2ComplaintList(Ljava/lang/String;)V

    .line 380
    .end local v0           #adapterJenisPengaduan:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    :cond_0
    :goto_2
    return-void

    .line 354
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v2       #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    .restart local v4       #i:I
    .restart local v6       #obj:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 355
    .local v7, object:Lorg/json/JSONObject;
    new-instance v2, Lcom/neuron/mytelkom/model/ComplaitLevel;

    .end local v2           #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    invoke-direct {v2}, Lcom/neuron/mytelkom/model/ComplaitLevel;-><init>()V

    .line 356
    .restart local v2       #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    const-string v8, "level2"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->setLevel(Ljava/lang/String;)V

    .line 357
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->setName(Ljava/lang/String;)V

    .line 358
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel1:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 363
    .end local v7           #object:Lorg/json/JSONObject;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel1:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neuron/mytelkom/model/ComplaitLevel;

    invoke-virtual {v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 376
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 378
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected fetchComplaintListLevel2(Ljava/lang/String;)V
    .locals 10
    .parameter "response"

    .prologue
    .line 437
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    .local v6, obj:Lorg/json/JSONObject;
    const-string v8, "rescode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "00"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 439
    const-string v8, "resmsg"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 440
    .local v1, array:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 450
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel2:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 455
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 456
    const v8, 0x109000a

    .line 457
    const v9, 0x1020014

    .line 455
    invoke-direct {v0, p0, v8, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 460
    .local v0, adapterJenisPengaduanDetil:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisPengaduanDetail:Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 467
    .end local v0           #adapterJenisPengaduanDetil:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    :cond_0
    :goto_2
    return-void

    .line 443
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v2       #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    .restart local v4       #i:I
    .restart local v6       #obj:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 444
    .local v7, object:Lorg/json/JSONObject;
    new-instance v2, Lcom/neuron/mytelkom/model/ComplaitLevel;

    .end local v2           #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    invoke-direct {v2}, Lcom/neuron/mytelkom/model/ComplaitLevel;-><init>()V

    .line 445
    .restart local v2       #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    const-string v8, "level3"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->setLevel(Ljava/lang/String;)V

    .line 446
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->setName(Ljava/lang/String;)V

    .line 447
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel2:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    .end local v7           #object:Lorg/json/JSONObject;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->listLevel2:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neuron/mytelkom/model/ComplaitLevel;

    invoke-virtual {v8}, Lcom/neuron/mytelkom/model/ComplaitLevel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 463
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #complaitLevel:Lcom/neuron/mytelkom/model/ComplaitLevel;
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 465
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fetchResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 543
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 544
    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 546
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, object:Lorg/json/JSONObject;
    const-string v2, "rescode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->finish()V

    .line 557
    .end local v1           #object:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 551
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v1           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLevel1ComplaintList()V
    .locals 9

    .prologue
    .line 276
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 278
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v2, object:Lorg/json/JSONObject;
    iget-boolean v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->isReg23:Z

    if-eqz v6, :cond_0

    .line 280
    const-string v6, "dataType"

    const-string v7, "REG23"

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v6, "dataSource"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v1, objParam:Lorg/json/JSONObject;
    const-string v6, "prodType"

    iget-object v7, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->productType:Ljava/lang/String;

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v6, "parent"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v6, "level"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v6, "dataParameter"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    :goto_0
    const-string v6, "transactionID"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v6, "statusCode"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v6, "strMessage"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, reqParams:Ljava/lang/String;
    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 315
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 316
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v3, v6, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/MTComplaintList.php?api="

    new-instance v8, Lcom/neuron/mytelkom/CreateTicketActivity$3;

    invoke-direct {v8, p0}, Lcom/neuron/mytelkom/CreateTicketActivity$3;-><init>(Lcom/neuron/mytelkom/CreateTicketActivity;)V

    invoke-virtual {v6, v7, v3, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 343
    .end local v1           #objParam:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    .end local v5           #reqParams:Ljava/lang/String;
    :goto_1
    return-void

    .line 289
    .restart local v2       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v6, "dataType"

    const-string v7, "NONREG23"

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v6, "dataSource"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v4, ""

    .line 292
    .local v4, prodType:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v7, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v6, v7, :cond_2

    .line 293
    const-string v4, "1"

    .line 300
    :cond_1
    :goto_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 301
    .restart local v1       #objParam:Lorg/json/JSONObject;
    const-string v6, "prodType"

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v6, "parent"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v6, "level"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v6, "dataParameter"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 339
    .end local v1           #objParam:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v4           #prodType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #object:Lorg/json/JSONObject;
    .restart local v4       #prodType:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v7, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v6, v7, :cond_3

    .line 295
    const-string v4, "11"

    .line 296
    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v7, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v6, v7, :cond_1

    .line 297
    const-string v4, "10000000"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getLevel2ComplaintList(Ljava/lang/String;)V
    .locals 9
    .parameter "parent"

    .prologue
    .line 383
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 384
    .local v4, progressDialog:Landroid/app/ProgressDialog;
    const-string v6, "Harap tunggu..."

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 387
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v2, object:Lorg/json/JSONObject;
    const-string v6, "dataType"

    const-string v7, "REG23"

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v6, "dataSource"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 391
    .local v1, objParam:Lorg/json/JSONObject;
    const-string v6, "prodType"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v6, "parent"

    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v6, "level"

    const-string v7, "2"

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v6, "dataParameter"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v6, "transactionID"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v6, "statusCode"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v6, "strMessage"

    const-string v7, ""

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, reqParams:Ljava/lang/String;
    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 404
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 405
    .local v3, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v3, v6, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v6, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/MTComplaintList.php?api="

    new-instance v8, Lcom/neuron/mytelkom/CreateTicketActivity$4;

    invoke-direct {v8, p0, v4}, Lcom/neuron/mytelkom/CreateTicketActivity$4;-><init>(Lcom/neuron/mytelkom/CreateTicketActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v7, v3, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1           #objParam:Lorg/json/JSONObject;
    .end local v2           #object:Lorg/json/JSONObject;
    .end local v3           #params:Lcom/loopj/android/http/RequestParams;
    .end local v5           #reqParams:Ljava/lang/String;
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialiazeIntent()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 76
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateTicketActivity;->KEY_PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/Product;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->product:Lcom/neuron/mytelkom/model/Product;

    .line 77
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/neuron/mytelkom/CreateTicketActivity;->KEY_PRODUCT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    .line 79
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    if-ne v0, v1, :cond_0

    .line 80
    const-string v0, "SPEEDY"

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->productType:Ljava/lang/String;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, "PSTN"

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->productType:Ljava/lang/String;

    goto :goto_0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 114
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateTicketActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateTicketActivity$1;-><init>(Lcom/neuron/mytelkom/CreateTicketActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->btnSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/CreateTicketActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/CreateTicketActivity$2;-><init>(Lcom/neuron/mytelkom/CreateTicketActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public initializeRequest()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeRequest()V

    .line 138
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->type:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    iget-object v1, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->product:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v1}, Lcom/neuron/mytelkom/model/Product;->getFastel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neuron/mytelkom/CreateTicketActivity;->getRegionalCode(Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->reg:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->reg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->reg:Ljava/lang/String;

    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getLevel1ComplaintList()V

    .line 143
    return-void
.end method

.method public initializeViews()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 90
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisTiket:Landroid/widget/Spinner;

    .line 91
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisPengaduan:Landroid/widget/Spinner;

    .line 92
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisPengaduanDetail:Landroid/widget/Spinner;

    .line 93
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->btnCancel:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->btnSubmit:Landroid/widget/Button;

    .line 95
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtEmail:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtKontak:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtPelapor:Landroid/widget/EditText;

    .line 98
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtLokasi:Landroid/widget/EditText;

    .line 99
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtKeluhan:Landroid/widget/EditText;

    .line 100
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtNoProduct:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->lnPengaduanDetilLevel1:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->lnPengaduanDetilLevel2:Landroid/widget/LinearLayout;

    .line 105
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    .line 106
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Harap tunggu..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/CreateTicketActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 59
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->initializeLibs()V

    .line 64
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->initialiazeIntent()V

    .line 65
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->initializeViews()V

    .line 66
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->setToView()V

    .line 67
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->initializeRequest()V

    .line 68
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->initializeActions()V

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/neuron/mytelkom/CreateTicketActivity;->finish()V

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setToView()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 150
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 151
    const-string v3, "Pengaduan Teknis"

    aput-object v3, v1, v2

    .line 154
    .local v1, jenisTiket:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 155
    const v2, 0x109000a

    .line 156
    const v3, 0x1020014

    .line 154
    invoke-direct {v0, p0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 159
    .local v0, adapterJenisTiket:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->spnJenisTiket:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtNoProduct:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->product:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/Product;->getFastel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->edtPelapor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateTicketActivity;->product:Lcom/neuron/mytelkom/model/Product;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/Product;->getCustomer()Lcom/neuron/mytelkom/model/Customer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neuron/mytelkom/model/Customer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method
