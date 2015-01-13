.class public Lcom/neuron/mytelkom/ProfileActivity;
.super Lcom/neuron/mytelkom/base/BaseActivity;
.source "ProfileActivity.java"


# instance fields
.field private KEY_USER:Ljava/lang/String;

.field private btnUpdatePassword:Landroid/widget/Button;

.field private btnUpdateProfile:Landroid/widget/Button;

.field private indicator:Landroid/widget/ProgressBar;

.field private lnProfile:Landroid/widget/LinearLayout;

.field private txtAlamat:Landroid/widget/TextView;

.field private txtEmail:Landroid/widget/TextView;

.field private txtName:Landroid/widget/TextView;

.field private txtNomorKontak:Landroid/widget/TextView;

.field private txtUsername:Landroid/widget/TextView;

.field private user:Lcom/neuron/mytelkom/model/User;

.field private viewError:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/neuron/mytelkom/base/BaseActivity;-><init>()V

    .line 36
    const-string v0, "user_data"

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->KEY_USER:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/neuron/mytelkom/ProfileActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->indicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/neuron/mytelkom/ProfileActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->lnProfile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/neuron/mytelkom/ProfileActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->viewError:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/neuron/mytelkom/ProfileActivity;)Lcom/neuron/mytelkom/model/User;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    return-object v0
.end method

.method private requestProfile()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 75
    iget-object v2, p0, Lcom/neuron/mytelkom/ProfileActivity;->indicator:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object v2, p0, Lcom/neuron/mytelkom/ProfileActivity;->lnProfile:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/neuron/mytelkom/ProfileActivity;->viewError:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v0, object:Lorg/json/JSONObject;
    const-string v2, "telkomid"

    iget-object v3, p0, Lcom/neuron/mytelkom/ProfileActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v3}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 83
    .local v1, params:Lcom/loopj/android/http/RequestParams;
    const-string v2, "param"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/neuron/mytelkom/ProfileActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v3, "https://my.telkom.co.id/api/MTprofile.php?api="

    new-instance v4, Lcom/neuron/mytelkom/ProfileActivity$1;

    invoke-direct {v4, p0}, Lcom/neuron/mytelkom/ProfileActivity$1;-><init>(Lcom/neuron/mytelkom/ProfileActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0           #object:Lorg/json/JSONObject;
    .end local v1           #params:Lcom/loopj/android/http/RequestParams;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toProfileActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neuron/mytelkom/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"

    .prologue
    const/16 v6, 0x8

    .line 142
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->fetchResponse(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->lnProfile:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->viewError:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, object:Lorg/json/JSONObject;
    const-string v4, "rescode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "resmsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 151
    .local v2, res:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtUsername:Landroid/widget/TextView;

    const-string v5, "username"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 153
    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 154
    .local v3, result:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtName:Landroid/widget/TextView;

    const-string v5, "full_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtAlamat:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "address"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "city"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtNomorKontak:Landroid/widget/TextView;

    const-string v5, "mobile1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtEmail:Landroid/widget/TextView;

    const-string v5, "resultDB"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "entry_email"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v4, Lcom/neuron/mytelkom/model/User;

    invoke-direct {v4}, Lcom/neuron/mytelkom/model/User;-><init>()V

    iput-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    .line 160
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "address"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setAddress(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "birthdate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setBirthDay(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "birthplace"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setPlaceBday(Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "city"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setCity(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "country"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setCountry(Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "education_level"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setEducation(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "flexi_no"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setFlexiNo(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "full_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setFullName(Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "gender"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setGender(Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "hobby"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setHobby(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "entry_email"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setEmail(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "mobile1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setMobilePhone(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "mother_maiden_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setMotherName(Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "occupation"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setOccupation(Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "personal_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setPersonalId(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "personal_id_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setPersonalIdType(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "province"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setProvince(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    const-string v5, "zip_code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setPostalCode(Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/neuron/mytelkom/ProfileActivity;->user:Lcom/neuron/mytelkom/model/User;

    iget-object v5, p0, Lcom/neuron/mytelkom/ProfileActivity;->preference:Lcom/neuron/mytelkom/utils/Preference;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/utils/Preference;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neuron/mytelkom/model/User;->setUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #res:Lorg/json/JSONObject;
    .end local v3           #result:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initializeActions()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeActions()V

    .line 196
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->btnUpdatePassword:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/ProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/ProfileActivity$2;-><init>(Lcom/neuron/mytelkom/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->btnUpdateProfile:Landroid/widget/Button;

    new-instance v1, Lcom/neuron/mytelkom/ProfileActivity$3;

    invoke-direct {v1, p0}, Lcom/neuron/mytelkom/ProfileActivity$3;-><init>(Lcom/neuron/mytelkom/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->initializeViews()V

    .line 61
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtName:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtAlamat:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtEmail:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtNomorKontak:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->txtUsername:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->indicator:Landroid/widget/ProgressBar;

    .line 67
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->lnProfile:Landroid/widget/LinearLayout;

    .line 68
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->btnUpdatePassword:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->btnUpdateProfile:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->viewError:Landroid/view/View;

    .line 71
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/neuron/mytelkom/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/neuron/mytelkom/ProfileActivity;->requestProfile()V

    .line 224
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
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/ProfileActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 47
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->initializeViews()V

    .line 52
    invoke-direct {p0}, Lcom/neuron/mytelkom/ProfileActivity;->requestProfile()V

    .line 53
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->initializeActions()V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/neuron/mytelkom/base/BaseActivity;->onDestroy()V

    .line 231
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/neuron/mytelkom/ProfileActivity;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 234
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lcom/neuron/mytelkom/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 126
    :sswitch_0
    iget-object v1, p0, Lcom/neuron/mytelkom/ProfileActivity;->indicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/neuron/mytelkom/ProfileActivity;->requestProfile()V

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-virtual {p0}, Lcom/neuron/mytelkom/ProfileActivity;->finish()V

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a0100 -> :sswitch_0
    .end sparse-switch
.end method
