.class public Lcom/squareup/picasso/OkHttpDownloader;
.super Ljava/lang/Object;
.source "OkHttpDownloader.java"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# static fields
.field static final RESPONSE_SOURCE_ANDROID:Ljava/lang/String; = "X-Android-Response-Source"

.field static final RESPONSE_SOURCE_OKHTTP:Ljava/lang/String; = "OkHttp-Response-Source"


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Ljava/io/File;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "maxSize"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Ljava/io/File;J)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/squareup/picasso/OkHttpDownloader;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "cacheDir"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->calculateDiskCacheSize(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Ljava/io/File;J)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .parameter "cacheDir"
    .parameter "maxSize"

    .prologue
    .line 72
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/OkHttpDownloader;->client:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v1, Lcom/squareup/okhttp/HttpResponseCache;

    invoke-direct {v1, p1, p2, p3}, Lcom/squareup/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setResponseCache(Ljava/net/ResponseCache;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/picasso/OkHttpDownloader;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method public load(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$Response;
    .locals 7
    .parameter "uri"
    .parameter "localCacheOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/OkHttpDownloader;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 100
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    const-string v4, "Cache-Control"

    const-string v5, "only-if-cached,max-age=2147483647"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 106
    .local v2, responseCode:I
    const/16 v4, 0x12c

    if-lt v2, v4, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    new-instance v4, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_1
    const-string v4, "OkHttp-Response-Source"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, responseSource:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 113
    const-string v4, "X-Android-Response-Source"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    :cond_2
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->parseResponseSourceHeader(Ljava/lang/String;)Z

    move-result v1

    .line 117
    .local v1, fromCache:Z
    new-instance v4, Lcom/squareup/picasso/Downloader$Response;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;Z)V

    return-object v4
.end method

.method protected openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lcom/squareup/picasso/OkHttpDownloader;->client:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 89
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    return-object v0
.end method
