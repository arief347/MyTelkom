.class public Lcom/squareup/picasso/Picasso$Builder;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lcom/squareup/picasso/Cache;

.field private final context:Landroid/content/Context;

.field private debugging:Z

.field private downloader:Lcom/squareup/picasso/Downloader;

.field private listener:Lcom/squareup/picasso/Picasso$Listener;

.field private service:Ljava/util/concurrent/ExecutorService;

.field private transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->context:Landroid/content/Context;

    .line 412
    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/picasso/Picasso;
    .locals 15

    .prologue
    .line 487
    iget-object v1, p0, Lcom/squareup/picasso/Picasso$Builder;->context:Landroid/content/Context;

    .line 489
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    if-nez v2, :cond_0

    .line 490
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->createDefaultDownloader(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    if-nez v2, :cond_1

    .line 493
    new-instance v2, Lcom/squareup/picasso/LruCache;

    invoke-direct {v2, v1}, Lcom/squareup/picasso/LruCache;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_2

    .line 496
    new-instance v2, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-direct {v2}, Lcom/squareup/picasso/PicassoExecutorService;-><init>()V

    iput-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-nez v2, :cond_3

    .line 499
    sget-object v2, Lcom/squareup/picasso/Picasso$RequestTransformer;->IDENTITY:Lcom/squareup/picasso/Picasso$RequestTransformer;

    iput-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 502
    :cond_3
    new-instance v6, Lcom/squareup/picasso/Stats;

    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    invoke-direct {v6, v2}, Lcom/squareup/picasso/Stats;-><init>(Lcom/squareup/picasso/Cache;)V

    .line 504
    .local v6, stats:Lcom/squareup/picasso/Stats;
    new-instance v0, Lcom/squareup/picasso/Dispatcher;

    iget-object v2, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    iget-object v4, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v5, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/Dispatcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V

    .line 506
    .local v0, dispatcher:Lcom/squareup/picasso/Dispatcher;
    new-instance v7, Lcom/squareup/picasso/Picasso;

    iget-object v10, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    iget-object v11, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    iget-object v12, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    iget-boolean v14, p0, Lcom/squareup/picasso/Picasso$Builder;->debugging:Z

    move-object v8, v1

    move-object v9, v0

    move-object v13, v6

    invoke-direct/range {v7 .. v14}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/Picasso$RequestTransformer;Lcom/squareup/picasso/Stats;Z)V

    return-object v7
.end method

.method public debugging(Z)Lcom/squareup/picasso/Picasso$Builder;
    .locals 0
    .parameter "debugging"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso$Builder;->debugging:Z

    .line 482
    return-object p0
.end method

.method public downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .parameter "downloader"

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Downloader must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    if-eqz v0, :cond_1

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->downloader:Lcom/squareup/picasso/Downloader;

    .line 423
    return-object p0
.end method

.method public executor(Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .parameter "executorService"

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor service already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    .line 435
    return-object p0
.end method

.method public listener(Lcom/squareup/picasso/Picasso$Listener;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .parameter "listener"

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    if-eqz v0, :cond_1

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->listener:Lcom/squareup/picasso/Picasso$Listener;

    .line 459
    return-object p0
.end method

.method public memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .parameter "memoryCache"

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Memory cache must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    if-eqz v0, :cond_1

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->cache:Lcom/squareup/picasso/Cache;

    .line 447
    return-object p0
.end method

.method public requestTransformer(Lcom/squareup/picasso/Picasso$RequestTransformer;)Lcom/squareup/picasso/Picasso$Builder;
    .locals 2
    .parameter "transformer"

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    if-eqz v0, :cond_1

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transformer already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    iput-object p1, p0, Lcom/squareup/picasso/Picasso$Builder;->transformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 476
    return-object p0
.end method
