.class public abstract Lcom/loopj/android/http/BaseJsonHttpResponseHandler;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "BaseJsonHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JSON_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/loopj/android/http/TextHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseJsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 38
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "error"
    .parameter "content"

    .prologue
    .line 86
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "e"

    .prologue
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    const/4 v4, 0x0

    .line 131
    if-eqz p3, :cond_0

    .line 132
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 157
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, v4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "error"
    .parameter "content"

    .prologue
    .line 92
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 68
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public final onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 62
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 74
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public final onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 80
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final onSuccess(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "content"

    .prologue
    .line 56
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 57
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    const/4 v1, 0x0

    .line 101
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 44
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 45
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 50
    .local p0, this:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;,"Lcom/loopj/android/http/BaseJsonHttpResponseHandler<TJSON_TYPE;>;"
    invoke-super {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected abstract parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TJSON_TYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
