.class public Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Picasso$LoadedFrom;,
        Lcom/squareup/picasso/Picasso$Builder;,
        Lcom/squareup/picasso/Picasso$CleanupThread;,
        Lcom/squareup/picasso/Picasso$RequestTransformer;,
        Lcom/squareup/picasso/Picasso$Listener;
    }
.end annotation


# static fields
.field static final HANDLER:Landroid/os/Handler;

.field static singleton:Lcom/squareup/picasso/Picasso;


# instance fields
.field final cache:Lcom/squareup/picasso/Cache;

.field private final cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

.field final context:Landroid/content/Context;

.field debugging:Z

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field private final listener:Lcom/squareup/picasso/Picasso$Listener;

.field final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

.field shutdown:Z

.field final stats:Lcom/squareup/picasso/Stats;

.field final targetToAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final targetToDeferredRequestCreator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/squareup/picasso/DeferredRequestCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/squareup/picasso/Picasso$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Picasso$Listener;Lcom/squareup/picasso/Picasso$RequestTransformer;Lcom/squareup/picasso/Stats;Z)V
    .locals 3
    .parameter "context"
    .parameter "dispatcher"
    .parameter "cache"
    .parameter "listener"
    .parameter "requestTransformer"
    .parameter "stats"
    .parameter "debugging"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 125
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    .line 126
    iput-object p4, p0, Lcom/squareup/picasso/Picasso;->listener:Lcom/squareup/picasso/Picasso$Listener;

    .line 127
    iput-object p5, p0, Lcom/squareup/picasso/Picasso;->requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    .line 128
    iput-object p6, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    .line 129
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    .line 131
    iput-boolean p7, p0, Lcom/squareup/picasso/Picasso;->debugging:Z

    .line 132
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 133
    new-instance v0, Lcom/squareup/picasso/Picasso$CleanupThread;

    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/Picasso$CleanupThread;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/squareup/picasso/Picasso;->cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

    .line 134
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$CleanupThread;->start()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    return-void
.end method

.method private cancelExistingRequest(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 322
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 323
    .local v0, action:Lcom/squareup/picasso/Action;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->cancel()V

    .line 325
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Dispatcher;->dispatchCancel(Lcom/squareup/picasso/Action;)V

    .line 327
    :cond_0
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 328
    check-cast v2, Landroid/widget/ImageView;

    .line 329
    .local v2, targetImageView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/DeferredRequestCreator;

    .line 331
    .local v1, deferredRequestCreator:Lcom/squareup/picasso/DeferredRequestCreator;
    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {v1}, Lcom/squareup/picasso/DeferredRequestCreator;->cancel()V

    .line 335
    .end local v1           #deferredRequestCreator:Lcom/squareup/picasso/DeferredRequestCreator;
    .end local v2           #targetImageView:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 1
    .parameter "context"

    .prologue
    .line 389
    sget-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    .line 392
    :cond_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public cancelRequest(Lcom/squareup/picasso/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method complete(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 9
    .parameter "hunter"

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getActions()Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, joined:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/picasso/Action;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getData()Lcom/squareup/picasso/Request;

    move-result-object v7

    iget-object v6, v7, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 297
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 298
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 299
    .local v5, result:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v1

    .line 301
    .local v1, from:Lcom/squareup/picasso/Picasso$LoadedFrom;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/Action;

    .line 302
    .local v3, join:Lcom/squareup/picasso/Action;
    invoke-virtual {v3}, Lcom/squareup/picasso/Action;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 305
    iget-object v7, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    if-eqz v5, :cond_4

    .line 307
    if-nez v1, :cond_3

    .line 308
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "LoadedFrom cannot be null."

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 310
    :cond_3
    invoke-virtual {v3, v5, v1}, Lcom/squareup/picasso/Action;->complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {v3}, Lcom/squareup/picasso/Action;->error()V

    goto :goto_1

    .line 316
    .end local v3           #join:Lcom/squareup/picasso/Action;
    :cond_5
    iget-object v7, p0, Lcom/squareup/picasso/Picasso;->listener:Lcom/squareup/picasso/Picasso$Listener;

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 317
    iget-object v7, p0, Lcom/squareup/picasso/Picasso;->listener:Lcom/squareup/picasso/Picasso$Listener;

    invoke-interface {v7, p0, v6, v0}, Lcom/squareup/picasso/Picasso$Listener;->onImageLoadFailed(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method defer(Landroid/widget/ImageView;Lcom/squareup/picasso/DeferredRequestCreator;)V
    .locals 1
    .parameter "view"
    .parameter "request"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method enqueueAndSubmit(Lcom/squareup/picasso/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, target:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->targetToAction:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->submit(Lcom/squareup/picasso/Action;)V

    .line 274
    return-void
.end method

.method public getSnapshot()Lcom/squareup/picasso/StatsSnapshot;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v0}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public isDebugging()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->debugging:Z

    return v0
.end method

.method public load(I)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource ID must not be zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;
    .locals 2
    .parameter "uri"

    .prologue
    .line 158
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;
    .locals 3
    .parameter "file"

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 3
    .parameter "path"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Lcom/squareup/picasso/RequestCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/picasso/RequestCreator;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_0
.end method

.method quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "key"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-interface {v1, p1}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, cached:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 287
    :goto_0
    return-object v0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheMiss()V

    goto :goto_0
.end method

.method public setDebugging(Z)V
    .locals 0
    .parameter "debugging"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->debugging:Z

    .line 226
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 235
    sget-object v2, Lcom/squareup/picasso/Picasso;->singleton:Lcom/squareup/picasso/Picasso;

    if-ne p0, v2, :cond_0

    .line 236
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Default singleton instance cannot be shutdown."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_0
    iget-boolean v2, p0, Lcom/squareup/picasso/Picasso;->shutdown:Z

    if-eqz v2, :cond_1

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-interface {v2}, Lcom/squareup/picasso/Cache;->clear()V

    .line 242
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->cleanupThread:Lcom/squareup/picasso/Picasso$CleanupThread;

    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$CleanupThread;->shutdown()V

    .line 243
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Stats;->shutdown()V

    .line 244
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2}, Lcom/squareup/picasso/Dispatcher;->shutdown()V

    .line 245
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/DeferredRequestCreator;

    .line 246
    .local v0, deferredRequestCreator:Lcom/squareup/picasso/DeferredRequestCreator;
    invoke-virtual {v0}, Lcom/squareup/picasso/DeferredRequestCreator;->cancel()V

    goto :goto_1

    .line 248
    .end local v0           #deferredRequestCreator:Lcom/squareup/picasso/DeferredRequestCreator;
    :cond_2
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->targetToDeferredRequestCreator:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/picasso/Picasso;->shutdown:Z

    goto :goto_0
.end method

.method submit(Lcom/squareup/picasso/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Dispatcher;->dispatchSubmit(Lcom/squareup/picasso/Action;)V

    .line 278
    return-void
.end method

.method transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;
    .locals 4
    .parameter "request"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    invoke-interface {v1, p1}, Lcom/squareup/picasso/Picasso$RequestTransformer;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 254
    .local v0, transformed:Lcom/squareup/picasso/Request;
    if-nez v0, :cond_0

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request transformer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/picasso/Picasso;->requestTransformer:Lcom/squareup/picasso/Picasso$RequestTransformer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    return-object v0
.end method
