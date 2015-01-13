.class public Lcom/neuron/mytelkom/SampleActivity;
.super Landroid/app/Activity;
.source "SampleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v8, 0x7f030040

    invoke-virtual {p0, v8}, Lcom/neuron/mytelkom/SampleActivity;->setContentView(I)V

    .line 18
    const v8, 0x7f0a00fd

    invoke-virtual {p0, v8}, Lcom/neuron/mytelkom/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 20
    .local v7, txt:Landroid/widget/TextView;
    const-string v3, "{\'0\': {\'a\': \'abc\'}, \'1\': {\'a\': \'def\'}}"

    .line 21
    .local v3, jsons:Ljava/lang/String;
    const-string v6, ""

    .line 23
    .local v6, temp:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, json:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 26
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 38
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #json:Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void

    .line 28
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #json:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 29
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, item:Ljava/lang/Object;
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v5, object:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "a"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 34
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #item:Ljava/lang/Object;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
