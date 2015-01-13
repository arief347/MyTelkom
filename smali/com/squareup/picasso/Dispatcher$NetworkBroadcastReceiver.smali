.class Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBroadcastReceiver"
.end annotation


# static fields
.field private static final EXTRA_AIRPLANE_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Lcom/squareup/picasso/Dispatcher;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Dispatcher;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 281
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 282
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 301
    if-nez p2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 308
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Dispatcher;->dispatchAirplaneModeChange(Z)V

    goto :goto_0

    .line 310
    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Dispatcher;->dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method register()V
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v2, v2, Lcom/squareup/picasso/Dispatcher;->service:Ljava/util/concurrent/ExecutorService;

    instance-of v2, v2, Lcom/squareup/picasso/PicassoExecutorService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v2, v2, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/squareup/picasso/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 287
    .local v1, shouldScanState:Z
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    if-eqz v1, :cond_0

    .line 290
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v2, v2, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    return-void

    .line 285
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #shouldScanState:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->this$0:Lcom/squareup/picasso/Dispatcher;

    iget-object v0, v0, Lcom/squareup/picasso/Dispatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    return-void
.end method
