.class final Lcom/squareup/picasso/TargetAction;
.super Lcom/squareup/picasso/Action;
.source "TargetAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action",
        "<",
        "Lcom/squareup/picasso/Target;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Target;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V
    .locals 9
    .parameter "picasso"
    .parameter "target"
    .parameter "data"
    .parameter "skipCache"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 23
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 5
    .parameter "result"
    .parameter "from"

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Attempted to complete action with no result!\n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/TargetAction;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    .line 32
    .local v0, target:Lcom/squareup/picasso/Target;
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/squareup/picasso/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Target callback must not recycle bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_1
    return-void
.end method

.method error()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/squareup/picasso/TargetAction;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    .line 42
    .local v0, target:Lcom/squareup/picasso/Target;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/squareup/picasso/TargetAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    return-void
.end method
