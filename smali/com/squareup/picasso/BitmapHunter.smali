.class abstract Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;


# instance fields
.field final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifRotation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final picasso:Lcom/squareup/picasso/Picasso;

.field result:Landroid/graphics/Bitmap;

.field final skipMemoryCache:Z

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 2
    .parameter "picasso"
    .parameter "dispatcher"
    .parameter "cache"
    .parameter "stats"
    .parameter "action"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 65
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 66
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 67
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 68
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 69
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getData()Lcom/squareup/picasso/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 70
    iget-boolean v0, p5, Lcom/squareup/picasso/Action;->skipCache:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/BitmapHunter;->skipMemoryCache:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 72
    invoke-virtual {p0, p5}, Lcom/squareup/picasso/BitmapHunter;->attach(Lcom/squareup/picasso/Action;)V

    .line 73
    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, transformations:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/picasso/Transformation;>;"
    const/4 v7, 0x0

    .line 245
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 246
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/picasso/Transformation;

    .line 247
    .local v6, transformation:Lcom/squareup/picasso/Transformation;
    invoke-interface {v6, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 249
    .local v4, newResult:Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transformation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " returned null after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/Transformation;

    .line 257
    .local v5, t:Lcom/squareup/picasso/Transformation;
    invoke-interface {v5}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    .end local v5           #t:Lcom/squareup/picasso/Transformation;
    :cond_0
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v9, v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 292
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #newResult:Landroid/graphics/Bitmap;
    .end local v6           #transformation:Lcom/squareup/picasso/Transformation;
    .end local p1
    :cond_1
    :goto_2
    return-object p1

    .line 267
    .restart local v4       #newResult:Landroid/graphics/Bitmap;
    .restart local v6       #transformation:Lcom/squareup/picasso/Transformation;
    .restart local p1
    :cond_2
    if-ne v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 268
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v9, v6}, Lcom/squareup/picasso/BitmapHunter$2;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 275
    goto :goto_2

    .line 279
    :cond_3
    if-eq v4, p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 280
    sget-object v8, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v9, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v9, v6}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object p1, v7

    .line 287
    goto :goto_2

    .line 290
    :cond_4
    move-object p1, v4

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method static calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 5
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 233
    const/4 v1, 0x1

    .line 234
    .local v1, sampleSize:I
    if-gt p3, p1, :cond_0

    if-le p2, p0, :cond_1

    .line 235
    :cond_0
    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 236
    .local v0, heightRatio:I
    int-to-float v3, p2

    int-to-float v4, p0

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 237
    .local v2, widthRatio:I
    if-ge v0, v2, :cond_2

    move v1, v0

    .line 240
    .end local v0           #heightRatio:I
    .end local v2           #widthRatio:I
    :cond_1
    :goto_0
    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 241
    const/4 v3, 0x0

    iput-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    return-void

    .restart local v0       #heightRatio:I
    .restart local v2       #widthRatio:I
    :cond_2
    move v1, v2

    .line 237
    goto :goto_0
.end method

.method static calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "options"

    .prologue
    .line 228
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/squareup/picasso/BitmapHunter;->calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 229
    return-void
.end method

.method static createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "data"

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 221
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 224
    :cond_0
    return-object v0
.end method

.method static forRequest(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/BitmapHunter;
    .locals 9
    .parameter "context"
    .parameter "picasso"
    .parameter "dispatcher"
    .parameter "cache"
    .parameter "stats"
    .parameter "action"
    .parameter "downloader"

    .prologue
    .line 193
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getData()Lcom/squareup/picasso/Request;

    move-result-object v0

    iget v0, v0, Lcom/squareup/picasso/Request;->resourceId:I

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/squareup/picasso/ResourceBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/ResourceBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 215
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getData()Lcom/squareup/picasso/Request;

    move-result-object v0

    iget-object v8, v0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 197
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, scheme:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "photo"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/squareup/picasso/ContactsPhotoBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/ContactsPhotoBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string v0, "media"

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Lcom/squareup/picasso/MediaStoreBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/MediaStoreBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v0, Lcom/squareup/picasso/ContentStreamBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/ContentStreamBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    goto :goto_0

    .line 207
    :cond_3
    const-string v0, "file"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android_asset"

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    new-instance v0, Lcom/squareup/picasso/AssetBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/AssetBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    new-instance v0, Lcom/squareup/picasso/FileBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/FileBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    const-string v0, "android.resource"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    new-instance v0, Lcom/squareup/picasso/ResourceBitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/ResourceBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    new-instance v0, Lcom/squareup/picasso/NetworkBitmapHunter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/NetworkBitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)V

    goto/16 :goto_0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "data"
    .parameter "result"
    .parameter "exifRotation"

    .prologue
    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 297
    .local v11, inWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 299
    .local v10, inHeight:I
    const/4 v3, 0x0

    .line 300
    .local v3, drawX:I
    const/4 v4, 0x0

    .line 301
    .local v4, drawY:I
    move v5, v11

    .line 302
    .local v5, drawWidth:I
    move v6, v10

    .line 304
    .local v6, drawHeight:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    .local v7, matrix:Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    move/from16 v19, v0

    .line 308
    .local v19, targetWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    move/from16 v17, v0

    .line 310
    .local v17, targetHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    move/from16 v18, v0

    .line 311
    .local v18, targetRotation:F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_0

    .line 312
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v2, :cond_4

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    move/from16 v0, v18

    invoke-virtual {v7, v0, v2, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 319
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v2, :cond_6

    .line 320
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v20, v2, v8

    .line 321
    .local v20, widthRatio:F
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v9, v2, v8

    .line 323
    .local v9, heightRatio:F
    cmpl-float v2, v20, v9

    if-lez v2, :cond_5

    .line 324
    move/from16 v14, v20

    .line 325
    .local v14, scale:F
    int-to-float v2, v10

    div-float v8, v9, v20

    mul-float/2addr v2, v8

    float-to-double v0, v2

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v13, v0

    .line 326
    .local v13, newSize:I
    sub-int v2, v10, v13

    div-int/lit8 v4, v2, 0x2

    .line 327
    move v6, v13

    .line 334
    :goto_1
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 350
    .end local v9           #heightRatio:F
    .end local v13           #newSize:I
    .end local v14           #scale:F
    .end local v17           #targetHeight:I
    .end local v18           #targetRotation:F
    .end local v19           #targetWidth:I
    .end local v20           #widthRatio:F
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 351
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 354
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 356
    .local v12, newResult:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    if-eq v12, v0, :cond_3

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    move-object/from16 p1, v12

    .line 361
    :cond_3
    return-object p1

    .line 315
    .end local v12           #newResult:Landroid/graphics/Bitmap;
    .restart local v17       #targetHeight:I
    .restart local v18       #targetRotation:F
    .restart local v19       #targetWidth:I
    :cond_4
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 329
    .restart local v9       #heightRatio:F
    .restart local v20       #widthRatio:F
    :cond_5
    move v14, v9

    .line 330
    .restart local v14       #scale:F
    int-to-float v2, v11

    div-float v8, v20, v9

    mul-float/2addr v2, v8

    float-to-double v0, v2

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v13, v0

    .line 331
    .restart local v13       #newSize:I
    sub-int v2, v11, v13

    div-int/lit8 v3, v2, 0x2

    .line 332
    move v5, v13

    goto :goto_1

    .line 335
    .end local v9           #heightRatio:F
    .end local v13           #newSize:I
    .end local v14           #scale:F
    .end local v20           #widthRatio:F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v2, :cond_8

    .line 336
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v20, v2, v8

    .line 337
    .restart local v20       #widthRatio:F
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v9, v2, v8

    .line 338
    .restart local v9       #heightRatio:F
    cmpg-float v2, v20, v9

    if-gez v2, :cond_7

    move/from16 v14, v20

    .line 339
    .restart local v14       #scale:F
    :goto_3
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2

    .end local v14           #scale:F
    :cond_7
    move v14, v9

    .line 338
    goto :goto_3

    .line 340
    .end local v9           #heightRatio:F
    .end local v20           #widthRatio:F
    :cond_8
    if-eqz v19, :cond_1

    if-eqz v17, :cond_1

    move/from16 v0, v19

    if-ne v0, v11, :cond_9

    move/from16 v0, v17

    if-eq v0, v10, :cond_1

    .line 344
    :cond_9
    move/from16 v0, v19

    int-to-float v2, v0

    int-to-float v8, v11

    div-float v15, v2, v8

    .line 345
    .local v15, sx:F
    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v8, v10

    div-float v16, v2, v8

    .line 346
    .local v16, sy:F
    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_2
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method abstract decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v2, p0, Lcom/squareup/picasso/BitmapHunter;->skipMemoryCache:Z

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 118
    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-object v1, v0

    .line 140
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 123
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {p0, v2}, Lcom/squareup/picasso/BitmapHunter;->decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 126
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-eqz v2, :cond_5

    .line 128
    :cond_1
    sget-object v3, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-eqz v2, :cond_3

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    invoke-static {v2, v0, v4}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget-object v2, v2, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    :cond_5
    move-object v1, v0

    .line 140
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 135
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method isCancelled()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Picasso-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 85
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 105
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 107
    :goto_1
    return-void

    .line 88
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Lcom/squareup/picasso/Downloader$ResponseException;
    :try_start_2
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 92
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v0           #e:Lcom/squareup/picasso/Downloader$ResponseException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 95
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 98
    .local v1, writer:Ljava/io/StringWriter;
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 99
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 100
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #writer:Ljava/io/StringWriter;
    :catch_3
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 103
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Picasso-Idle"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method

.method protected setExifRotation(I)V
    .locals 0
    .parameter "exifRotation"

    .prologue
    .line 76
    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    .line 77
    return-void
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 1
    .parameter "airplaneMode"
    .parameter "info"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method shouldSkipMemoryCache()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/squareup/picasso/BitmapHunter;->skipMemoryCache:Z

    return v0
.end method
