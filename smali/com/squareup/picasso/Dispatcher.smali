.class Lcom/squareup/picasso/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;,
        Lcom/squareup/picasso/Dispatcher$DispatcherThread;,
        Lcom/squareup/picasso/Dispatcher$DispatcherHandler;
    }
.end annotation


# static fields
.field static final AIRPLANE_MODE_CHANGE:I = 0xa

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final BATCH_DELAY:I = 0xc8

.field private static final DISPATCHER_THREAD_NAME:Ljava/lang/String; = "Dispatcher"

.field static final HUNTER_BATCH_COMPLETE:I = 0x8

.field static final HUNTER_COMPLETE:I = 0x4

.field static final HUNTER_DECODE_FAILED:I = 0x6

.field static final HUNTER_DELAY_NEXT_BATCH:I = 0x7

.field static final HUNTER_RETRY:I = 0x5

.field static final NETWORK_STATE_CHANGE:I = 0x9

.field static final REQUEST_CANCEL:I = 0x2

.field static final REQUEST_GCED:I = 0x3

.field static final REQUEST_SUBMIT:I = 0x1

.field private static final RETRY_DELAY:I = 0x1f4


# instance fields
.field airplaneMode:Z

.field final batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final context:Landroid/content/Context;

.field final dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

.field final downloader:Lcom/squareup/picasso/Downloader;

.field final handler:Landroid/os/Handler;

.field final hunterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final mainThreadHandler:Landroid/os/Handler;

.field networkInfo:Landroid/net/NetworkInfo;

.field final receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

.field final service:Ljava/util/concurrent/ExecutorService;

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V
    .locals 2
    .parameter "context"
    .parameter "service"
    .parameter "mainThreadHandler"
    .parameter "downloader"
    .parameter "cache"
    .parameter "stats"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-direct {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    .line 79
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->start()V

    .line 80
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v1}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/Dispatcher;)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    .line 84
    iput-object p4, p0, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    .line 85
    iput-object p3, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    .line 86
    iput-object p5, p0, Lcom/squareup/picasso/Dispatcher;->cache:Lcom/squareup/picasso/Cache;

    .line 87
    iput-object p6, p0, Lcom/squareup/picasso/Dispatcher;->stats:Lcom/squareup/picasso/Stats;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->airplaneMode:Z

    .line 90
    new-instance v0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;-><init>(Lcom/squareup/picasso/Dispatcher;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    .line 91
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->register()V

    .line 92
    return-void
.end method

.method private batch(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 4
    .parameter "hunter"

    .prologue
    const/4 v3, 0x7

    .line 202
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method dispatchAirplaneModeChange(Z)V
    .locals 5
    .parameter "airplaneMode"

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void

    :cond_0
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method dispatchCancel(Lcom/squareup/picasso/Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 3
    .parameter "hunter"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 3
    .parameter "hunter"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 4
    .parameter "hunter"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void
.end method

.method dispatchSubmit(Lcom/squareup/picasso/Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method performAirplaneModeChange(Z)V
    .locals 0
    .parameter "airplaneMode"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/squareup/picasso/Dispatcher;->airplaneMode:Z

    .line 192
    return-void
.end method

.method performBatchComplete()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v0, copy:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->batch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->mainThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method

.method performCancel(Lcom/squareup/picasso/Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 148
    .local v0, hunter:Lcom/squareup/picasso/BitmapHunter;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/BitmapHunter;->detach(Lcom/squareup/picasso/Action;)V

    .line 150
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->cancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method performComplete(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 3
    .parameter "hunter"

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->shouldSkipMemoryCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->cache:Lcom/squareup/picasso/Cache;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getResult()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/picasso/Cache;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->batch(Lcom/squareup/picasso/BitmapHunter;)V

    .line 177
    return-void
.end method

.method performError(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 2
    .parameter "hunter"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->batch(Lcom/squareup/picasso/BitmapHunter;)V

    .line 188
    return-void
.end method

.method performNetworkStateChange(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher;->networkInfo:Landroid/net/NetworkInfo;

    .line 196
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/PicassoExecutorService;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->adjustThreadCount(Landroid/net/NetworkInfo;)V

    .line 199
    :cond_0
    return-void
.end method

.method performRetry(Lcom/squareup/picasso/BitmapHunter;)V
    .locals 2
    .parameter "hunter"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->airplaneMode:Z

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/BitmapHunter;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0
.end method

.method performSubmit(Lcom/squareup/picasso/Action;)V
    .locals 8
    .parameter "action"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/picasso/BitmapHunter;

    .line 131
    .local v7, hunter:Lcom/squareup/picasso/BitmapHunter;
    if-eqz v7, :cond_1

    .line 132
    invoke-virtual {v7, p1}, Lcom/squareup/picasso/BitmapHunter;->attach(Lcom/squareup/picasso/Action;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->cache:Lcom/squareup/picasso/Cache;

    iget-object v4, p0, Lcom/squareup/picasso/Dispatcher;->stats:Lcom/squareup/picasso/Stats;

    iget-object v6, p0, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/squareup/picasso/BitmapHunter;->forRequest(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/BitmapHunter;

    move-result-object v7

    .line 141
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v7, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 142
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->hunterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 96
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->dispatcherThread:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->quit()Z

    .line 97
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->receiver:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->unregister()V

    .line 98
    return-void
.end method
