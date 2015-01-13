.class final Lcom/squareup/picasso/Picasso$1;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 85
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 99
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown handler message received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 87
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 88
    .local v1, batch:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/BitmapHunter;

    .line 89
    .local v2, hunter:Lcom/squareup/picasso/BitmapHunter;
    iget-object v4, v2, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v2}, Lcom/squareup/picasso/Picasso;->complete(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 94
    .end local v1           #batch:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/picasso/BitmapHunter;>;"
    .end local v2           #hunter:Lcom/squareup/picasso/BitmapHunter;
    .end local v3           #i$:Ljava/util/Iterator;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 95
    .local v0, action:Lcom/squareup/picasso/Action;
    iget-object v4, v0, Lcom/squareup/picasso/Action;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getTarget()Ljava/lang/Object;

    move-result-object v5

    #calls: Lcom/squareup/picasso/Picasso;->cancelExistingRequest(Ljava/lang/Object;)V
    invoke-static {v4, v5}, Lcom/squareup/picasso/Picasso;->access$000(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V

    .line 101
    .end local v0           #action:Lcom/squareup/picasso/Action;
    :cond_0
    return-void

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
