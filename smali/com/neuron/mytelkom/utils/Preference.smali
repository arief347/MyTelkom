.class public Lcom/neuron/mytelkom/utils/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# instance fields
.field KEY_CITY:Ljava/lang/String;

.field KEY_IS_LOGIN:Ljava/lang/String;

.field KEY_USERNAME:Ljava/lang/String;

.field PREFS_NAME:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field editor:Landroid/content/SharedPreferences$Editor;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->preferences:Landroid/content/SharedPreferences;

    .line 12
    const-string v0, "MyTelkomPrefs"

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->PREFS_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "username"

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_USERNAME:Ljava/lang/String;

    .line 14
    const-string v0, "isLogin"

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_IS_LOGIN:Ljava/lang/String;

    .line 15
    const-string v0, "city"

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_CITY:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/neuron/mytelkom/utils/Preference;->activity:Landroid/app/Activity;

    .line 20
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->PREFS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->preferences:Landroid/content/SharedPreferences;

    .line 21
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    .line 22
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/utils/Preference;->setUsername(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/neuron/mytelkom/utils/Preference;->setIsLogin(Z)V

    .line 54
    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_CITY:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsLogin()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_IS_LOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_USERNAME:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 2
    .parameter "jsonCity"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_CITY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public setIsLogin(Z)V
    .locals 3
    .parameter "isLogin"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_IS_LOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/neuron/mytelkom/utils/Preference;->KEY_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v0, p0, Lcom/neuron/mytelkom/utils/Preference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method
