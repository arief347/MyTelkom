.class public Lcom/squareup/picasso/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# instance fields
.field private final data:Lcom/squareup/picasso/Request$Builder;

.field private deferred:Z

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:I

.field private noFade:Z

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResId:I

.field private skipMemoryCache:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    .line 57
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 2
    .parameter "picasso"
    .parameter "uri"
    .parameter "resourceId"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->shutdown:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    .line 52
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    invoke-direct {v0, p2, p3}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    .line 53
    return-void
.end method


# virtual methods
.method public centerCrop()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->centerCrop()Lcom/squareup/picasso/Request$Builder;

    .line 154
    return-object p0
.end method

.method public centerInside()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->centerInside()Lcom/squareup/picasso/Request$Builder;

    .line 163
    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .parameter "config"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Request$Builder;

    .line 181
    return-object p0
.end method

.method public error(I)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .parameter "errorResId"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    .line 101
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .parameter "errorDrawable"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    return-object p0
.end method

.method public fetch()V
    .locals 5

    .prologue
    .line 234
    iget-boolean v3, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v3, :cond_0

    .line 235
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Fit cannot be used with fetch."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v1

    .line 239
    .local v1, finalData:Lcom/squareup/picasso/Request;
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, key:Ljava/lang/String;
    new-instance v0, Lcom/squareup/picasso/FetchAction;

    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/squareup/picasso/FetchAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V

    .line 242
    .local v0, action:Lcom/squareup/picasso/Action;
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    .line 244
    .end local v0           #action:Lcom/squareup/picasso/Action;
    .end local v1           #finalData:Lcom/squareup/picasso/Request;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public fit()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    .line 124
    return-object p0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkNotMain()V

    .line 214
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with get."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v7

    .line 222
    .local v7, finalData:Lcom/squareup/picasso/Request;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v0}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, key:Ljava/lang/String;
    new-instance v5, Lcom/squareup/picasso/GetAction;

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    invoke-direct {v5, v0, v7, v1, v8}, Lcom/squareup/picasso/GetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V

    .line 225
    .local v5, action:Lcom/squareup/picasso/Action;
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, v2, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v4, v4, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    iget-object v6, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v6, v6, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget-object v6, v6, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    invoke-static/range {v0 .. v6}, Lcom/squareup/picasso/BitmapHunter;->forRequest(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/BitmapHunter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 327
    return-void
.end method

.method public into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 18
    .parameter "target"
    .parameter "callback"

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Target must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 345
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v3, :cond_6

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request$Builder;->hasSize()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Fit cannot be used with resize."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v17

    .line 354
    .local v17, measuredWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    .line 355
    .local v16, measuredHeight:I
    if-eqz v17, :cond_4

    if-nez v16, :cond_5

    .line 356
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    new-instance v4, Lcom/squareup/picasso/DeferredRequestCreator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/squareup/picasso/DeferredRequestCreator;-><init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/squareup/picasso/Picasso;->defer(Landroid/widget/ImageView;Lcom/squareup/picasso/DeferredRequestCreator;)V

    goto :goto_0

    .line 360
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/squareup/picasso/Request$Builder;->resize(II)Lcom/squareup/picasso/Request$Builder;

    .line 363
    .end local v16           #measuredHeight:I
    .end local v17           #measuredWidth:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v9

    .line 364
    .local v9, finalData:Lcom/squareup/picasso/Request;
    invoke-static {v9}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v14

    .line 366
    .local v14, requestKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v3, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v14}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 368
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_7

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v4, v3, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    sget-object v6, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v8, v3, Lcom/squareup/picasso/Picasso;->debugging:Z

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lcom/squareup/picasso/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 372
    if-eqz p2, :cond_1

    .line 373
    invoke-interface/range {p2 .. p2}, Lcom/squareup/picasso/Callback;->onSuccess()V

    goto/16 :goto_0

    .line 379
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 381
    new-instance v6, Lcom/squareup/picasso/ImageViewAction;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    invoke-direct/range {v6 .. v15}, Lcom/squareup/picasso/ImageViewAction;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/squareup/picasso/Callback;)V

    .line 385
    .local v6, action:Lcom/squareup/picasso/Action;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    goto/16 :goto_0
.end method

.method public into(Lcom/squareup/picasso/Target;)V
    .locals 8
    .parameter "target"

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v1, :cond_1

    .line 288
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with a Target."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 295
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    .line 297
    invoke-interface {p1, v7}, Lcom/squareup/picasso/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_1
    return-void

    .line 291
    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 301
    .restart local v7       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v3

    .line 302
    .local v3, finalData:Lcom/squareup/picasso/Request;
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, requestKey:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v1, :cond_4

    .line 305
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v5}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 306
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 307
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    .line 308
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-interface {p1, v6, v1}, Lcom/squareup/picasso/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    goto :goto_1

    .line 313
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-interface {p1, v7}, Lcom/squareup/picasso/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 315
    new-instance v0, Lcom/squareup/picasso/TargetAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/TargetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Target;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V

    .line 316
    .local v0, action:Lcom/squareup/picasso/Action;
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    goto :goto_1
.end method

.method public noFade()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    .line 208
    return-object p0
.end method

.method public placeholder(I)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .parameter "placeholderResId"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    .line 73
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .parameter "placeholderDrawable"

    .prologue
    .line 85
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    return-object p0
.end method

.method public resize(II)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/Request$Builder;->resize(II)Lcom/squareup/picasso/Request$Builder;

    .line 144
    return-object p0
.end method

.method public resizeDimen(II)Lcom/squareup/picasso/RequestCreator;
    .locals 4
    .parameter "targetWidthResId"
    .parameter "targetHeightResId"

    .prologue
    .line 135
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 137
    .local v2, targetWidth:I
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    .local v1, targetHeight:I
    invoke-virtual {p0, v2, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    return-object v3
.end method

.method public rotate(F)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .parameter "degrees"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->rotate(F)Lcom/squareup/picasso/Request$Builder;

    .line 169
    return-object p0
.end method

.method public rotate(FFF)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .parameter "degrees"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/picasso/Request$Builder;->rotate(FFF)Lcom/squareup/picasso/Request$Builder;

    .line 175
    return-object p0
.end method

.method public skipMemoryCache()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    .line 202
    return-object p0
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;
    .locals 1
    .parameter "transformation"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;

    .line 192
    return-object p0
.end method

.method unfit()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    .line 130
    return-object p0
.end method
