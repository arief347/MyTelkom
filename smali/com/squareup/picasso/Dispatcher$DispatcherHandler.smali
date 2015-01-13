.class Lcom/squareup/picasso/Dispatcher$DispatcherHandler;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatcherHandler"
.end annotation


# instance fields
.field private final dispatcher:Lcom/squareup/picasso/Dispatcher;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/Dispatcher;)V
    .locals 0
    .parameter "looper"
    .parameter "dispatcher"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    iput-object p2, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 220
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 260
    :pswitch_0
    sget-object v3, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v4, Lcom/squareup/picasso/Dispatcher$DispatcherHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/squareup/picasso/Dispatcher$DispatcherHandler$1;-><init>(Lcom/squareup/picasso/Dispatcher$DispatcherHandler;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :goto_0
    return-void

    .line 222
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 223
    .local v0, action:Lcom/squareup/picasso/Action;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Dispatcher;->performSubmit(Lcom/squareup/picasso/Action;)V

    goto :goto_0

    .line 227
    .end local v0           #action:Lcom/squareup/picasso/Action;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 228
    .restart local v0       #action:Lcom/squareup/picasso/Action;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Dispatcher;->performCancel(Lcom/squareup/picasso/Action;)V

    goto :goto_0

    .line 232
    .end local v0           #action:Lcom/squareup/picasso/Action;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/BitmapHunter;

    .line 233
    .local v1, hunter:Lcom/squareup/picasso/BitmapHunter;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Dispatcher;->performComplete(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 237
    .end local v1           #hunter:Lcom/squareup/picasso/BitmapHunter;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/BitmapHunter;

    .line 238
    .restart local v1       #hunter:Lcom/squareup/picasso/BitmapHunter;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Dispatcher;->performRetry(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 242
    .end local v1           #hunter:Lcom/squareup/picasso/BitmapHunter;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/BitmapHunter;

    .line 243
    .restart local v1       #hunter:Lcom/squareup/picasso/BitmapHunter;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 247
    .end local v1           #hunter:Lcom/squareup/picasso/BitmapHunter;
    :pswitch_6
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3}, Lcom/squareup/picasso/Dispatcher;->performBatchComplete()V

    goto :goto_0

    .line 251
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 252
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Dispatcher;->performNetworkStateChange(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 256
    .end local v2           #info:Landroid/net/NetworkInfo;
    :pswitch_8
    iget-object v4, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_0

    :goto_1
    invoke-virtual {v4, v3}, Lcom/squareup/picasso/Dispatcher;->performAirplaneModeChange(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
