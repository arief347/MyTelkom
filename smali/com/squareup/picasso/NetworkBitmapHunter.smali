.class Lcom/squareup/picasso/NetworkBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "NetworkBitmapHunter.java"


# static fields
.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field private static final MARKER:I = 0x10000


# instance fields
.field private final downloader:Lcom/squareup/picasso/Downloader;

.field retryCount:I


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)V
    .locals 1
    .parameter "picasso"
    .parameter "dispatcher"
    .parameter "cache"
    .parameter "stats"
    .parameter "action"
    .parameter "downloader"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 39
    iput-object p6, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->downloader:Lcom/squareup/picasso/Downloader;

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    .line 41
    return-void
.end method

.method private decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "stream"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-object v6

    .line 79
    :cond_0
    new-instance v4, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v4, p1}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v4, markStream:Lcom/squareup/picasso/MarkableInputStream;
    move-object p1, v4

    .line 82
    const/high16 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v2

    .line 84
    .local v2, mark:J
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result v1

    .line 85
    .local v1, isWebPFile:Z
    invoke-virtual {v4, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 90
    .local v0, bytes:[B
    invoke-static {p2}, Lcom/squareup/picasso/NetworkBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 91
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p2}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    array-length v6, v0

    invoke-static {v0, v8, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    iget v6, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v7, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v6, v7, v5}, Lcom/squareup/picasso/NetworkBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 97
    :cond_1
    array-length v6, v0

    invoke-static {v0, v8, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 99
    .end local v0           #bytes:[B
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {p2}, Lcom/squareup/picasso/NetworkBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 100
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p2}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    invoke-static {p1, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v7, p2, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v8, p2, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v7, v8, v5}, Lcom/squareup/picasso/NetworkBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 106
    invoke-virtual {v4, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 108
    :cond_3
    invoke-static {p1, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget v4, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 46
    .local v1, loadFromLocalCacheOnly:Z
    :goto_0
    iget-object v4, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v5, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-interface {v4, v5, v1}, Lcom/squareup/picasso/Downloader;->load(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$Response;

    move-result-object v2

    .line 47
    .local v2, response:Lcom/squareup/picasso/Downloader$Response;
    if-nez v2, :cond_2

    .line 48
    const/4 v3, 0x0

    .line 62
    :cond_0
    :goto_1
    return-object v3

    .line 44
    .end local v1           #loadFromLocalCacheOnly:Z
    .end local v2           #response:Lcom/squareup/picasso/Downloader$Response;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .restart local v1       #loadFromLocalCacheOnly:Z
    .restart local v2       #response:Lcom/squareup/picasso/Downloader$Response;
    :cond_2
    iget-boolean v4, v2, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    :goto_2
    iput-object v4, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 53
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 54
    .local v3, result:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 60
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/squareup/picasso/NetworkBitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 62
    .end local v3           #result:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 51
    .end local v0           #is:Ljava/io/InputStream;
    :cond_3
    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_2

    .line 62
    .restart local v0       #is:Ljava/io/InputStream;
    .restart local v3       #result:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 4
    .parameter "airplaneMode"
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget v3, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    if-lez v3, :cond_1

    move v0, v2

    .line 68
    .local v0, hasRetries:Z
    :goto_0
    if-nez v0, :cond_2

    .line 72
    :cond_0
    :goto_1
    return v1

    .end local v0           #hasRetries:Z
    :cond_1
    move v0, v1

    .line 67
    goto :goto_0

    .line 71
    .restart local v0       #hasRetries:Z
    :cond_2
    iget v3, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/squareup/picasso/NetworkBitmapHunter;->retryCount:I

    .line 72
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
