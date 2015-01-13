.class Lcom/squareup/picasso/ContentStreamBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "ContentStreamBitmapHunter.java"


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 6
    .parameter "context"
    .parameter "picasso"
    .parameter "dispatcher"
    .parameter "cache"
    .parameter "stats"
    .parameter "action"

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 33
    iput-object p1, p0, Lcom/squareup/picasso/ContentStreamBitmapHunter;->context:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->decodeContentStream(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected decodeContentStream(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v3, p0, Lcom/squareup/picasso/ContentStreamBitmapHunter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 48
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 53
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 57
    iget v3, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v4, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v3, v4, v2}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 59
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 61
    .restart local v1       #is:Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 63
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    .line 55
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .line 63
    :catchall_1
    move-exception v3

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
