.class public Lcom/neuron/mytelkom/AddNewProductActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "AddNewProductActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;
    }
.end annotation


# static fields
.field public static ADD_NEW_PRODUCT_CODE:I

.field public static NEW_PRODUCT_KEY:Ljava/lang/String;


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private cbAgreement:Landroid/widget/CheckBox;

.field private edtNo:Landroid/widget/EditText;

.field private ownership:[Ljava/lang/String;

.field private productType:Ljava/lang/String;

.field private spnProductOwner:Landroid/widget/Spinner;

.field public txtProductType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "NewProductSource"

    sput-object v0, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    .line 37
    const/16 v0, 0x64

    sput v0, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->productType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    const-string v2, "Pemilik"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Keluarga"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Penyewa Rumah"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Pembeli (Alih Kepemilikan)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Lain-lain"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->ownership:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/AddNewProductActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->cbAgreement:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/AddNewProductActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->edtNo:Landroid/widget/EditText;

    return-object v0
.end method

.method public static toAddNewProductActivity(Landroid/app/Activity;Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;)V
    .locals 2
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/AddNewProductActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    sget v1, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 212
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, object:Lorg/json/JSONObject;
    const-string v2, "rescode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 216
    sget v2, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    invoke-virtual {p0, v2}, Lcom/neuron/mytelkom/AddNewProductActivity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->finish()V

    .line 226
    .end local v1           #object:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 220
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_0
    const-string v2, "resmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {p0, v2}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v1           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialiazeIntent()V
    .locals 5

    .prologue
    .line 104
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initialiazeIntent()V

    .line 106
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 107
    const v2, 0x109000a

    .line 108
    const v3, 0x1020014

    .line 109
    iget-object v4, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->ownership:[Ljava/lang/String;

    .line 106
    invoke-direct {v0, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 110
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->spnProductOwner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 112
    const-string v1, "Dengan menyadari sepenuhnya akan segala akibatnya termasuk sanksi-sanksi sesuai dengan ketentuan perundang-undangan yang berlaku, saya menyatakan bahwa apa yang telah saya beritahukan diatas adalah informasi yang sebenar-benarnya"

    .line 115
    .local v1, agreement:Ljava/lang/String;
    iget-object v2, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->cbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 128
    iget-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->btnSave:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/AddNewProductActivity$1;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/AddNewProductActivity$1;-><init>(Lcom/neuron/mytelkom/AddNewProductActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public initializeRequest()V
    .locals 9

    .prologue
    .line 159
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeRequest()V

    .line 160
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    const-string v6, "Harap tunggu..."

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v6, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->edtNo:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, no:Ljava/lang/String;
    iget-object v6, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->spnProductOwner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 168
    .local v2, idProd:I
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "telkomid"

    iget-object v7, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v7}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v6, "addprodno"

    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v6, "addprodrel"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v6, "addprodtype"

    iget-object v7, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->productType:Ljava/lang/String;

    invoke-static {v7}, Lcom/neuron/mytelkom/utils/Utils;->encodedParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 176
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 177
    .local v5, params:Lcom/loopj/android/http/RequestParams;
    const-string v6, "param"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 181
    iget-object v6, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "https://my.telkom.co.id/api/MTaddProduct.php?api="

    new-instance v8, Lcom/neuron/mytelkom/AddNewProductActivity$2;

    invoke-direct {v8, p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity$2;-><init>(Lcom/neuron/mytelkom/AddNewProductActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v7, v5, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #params:Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 71
    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->txtProductType:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->edtNo:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->spnProductOwner:Landroid/widget/Spinner;

    .line 74
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->btnSave:Landroid/widget/Button;

    .line 75
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->cbAgreement:Landroid/widget/CheckBox;

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 56
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->initializeViews()V

    .line 61
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->initialiazeIntent()V

    .line 62
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->setToView()V

    .line 63
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->initializeActions()V

    .line 64
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 150
    sget v0, Lcom/neuron/mytelkom/AddNewProductActivity;->ADD_NEW_PRODUCT_CODE:I

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/AddNewProductActivity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->finish()V

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setToView()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->setToView()V

    .line 82
    const-string v0, ""

    .line 83
    .local v0, productName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v0, "Nomor Telepon Rumah"

    .line 85
    const-string v1, "PSTN"

    iput-object v1, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->productType:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->txtProductType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string v0, "Nomor Speedy"

    .line 88
    const-string v1, "SPEEDY"

    iput-object v1, p0, Lcom/neuron/mytelkom/AddNewProductActivity;->productType:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const-string v0, "Nomor Flexi"

    .line 91
    const-string v0, "FLEXI"

    .line 92
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/neuron/mytelkom/AddNewProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity;->NEW_PRODUCT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    sget-object v2, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->IME:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v0, "Nama Product"

    .line 94
    const-string v0, "IME"

    goto :goto_0
.end method
