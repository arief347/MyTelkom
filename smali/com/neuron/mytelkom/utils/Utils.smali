.class public Lcom/neuron/mytelkom/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateConversion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 63
    const-string v1, ""

    .line 64
    .local v1, tgl:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    return-object v1
.end method

.method public static encodedParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 46
    .local v1, v:Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "price"

    .prologue
    .line 56
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "###,###.###"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, myFormatter:Ljava/text/DecimalFormat;
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, output:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-object v1
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 26
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 21
    sget-object v0, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static replaceNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 31
    const-string v0, ""

    .line 33
    .local v0, updateValue:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    const-string v0, "-"

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static showToast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 18
    return-void
.end method
