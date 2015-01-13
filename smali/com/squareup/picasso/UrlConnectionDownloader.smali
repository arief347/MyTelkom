.class public Lcom/squareup/picasso/UrlConnectionDownloader;
.super Ljava/lang/Object;
.source "UrlConnectionDownloader.java"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;
    }
.end annotation


# static fields
.field static final RESPONSE_SOURCE:Ljava/lang/String; = "X-Android-Response-Source"

.field static volatile cache:Ljava/lang/Object;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/UrlConnectionDownloader;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private static installCacheIfNeeded(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 79
    :try_start_0
    sget-object v1, Lcom/squareup/picasso/UrlConnectionDownloader;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    sget-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/squareup/picasso/UrlConnectionDownloader$ResponseCacheIcs;->install(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/UrlConnectionDownloader;->cache:Ljava/lang/Object;

    .line 83
    :cond_0
    monitor-exit v1

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$Response;
    .locals 6
    .parameter "uri"
    .parameter "localCacheOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 55
    iget-object v3, p0, Lcom/squareup/picasso/UrlConnectionDownloader;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/UrlConnectionDownloader;->installCacheIfNeeded(Landroid/content/Context;)V

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/UrlConnectionDownloader;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 59
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    const-string v3, "Cache-Control"

    const-string v4, "only-if-cached,max-age=2147483647"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 65
    .local v2, responseCode:I
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    new-instance v3, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_2
    const-string v3, "X-Android-Response-Source"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/picasso/Utils;->parseResponseSourceHeader(Ljava/lang/String;)Z

    move-result v1

    .line 72
    .local v1, fromCache:Z
    new-instance v3, Lcom/squareup/picasso/Downloader$Response;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;Z)V

    return-object v3
.end method

.method protected openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 48
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    return-object v0
.end method
