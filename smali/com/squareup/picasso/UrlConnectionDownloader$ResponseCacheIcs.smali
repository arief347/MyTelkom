.class Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;
.super Ljava/lang/Object;
.source "UrlConnectionDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/UrlConnectionDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseCacheIcs"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, cacheDir:Ljava/io/File;
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 93
    .local v0, cache:Landroid/net/http/HttpResponseCache;
    if-nez v0, :cond_0

    .line 94
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->calculateDiskCacheSize(Ljava/io/File;)J

    move-result-wide v2

    .line 95
    .local v2, maxSize:J
    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 97
    .end local v2           #maxSize:J
    :cond_0
    return-object v0
.end method
