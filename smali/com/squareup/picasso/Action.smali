.class abstract Lcom/squareup/picasso/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Action$RequestWeakReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field cancelled:Z

.field final data:Lcom/squareup/picasso/Request;

.field final errorDrawable:Landroid/graphics/drawable/Drawable;

.field final errorResId:I

.field final key:Ljava/lang/String;

.field final noFade:Z

.field final picasso:Lcom/squareup/picasso/Picasso;

.field final skipCache:Z

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .parameter "picasso"
    .parameter
    .parameter "data"
    .parameter "skipCache"
    .parameter "noFade"
    .parameter "errorResId"
    .parameter "errorDrawable"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/picasso/Picasso;",
            "TT;",
            "Lcom/squareup/picasso/Request;",
            "ZZI",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    .local p2, target:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/squareup/picasso/Action;->picasso:Lcom/squareup/picasso/Picasso;

    .line 47
    iput-object p3, p0, Lcom/squareup/picasso/Action;->data:Lcom/squareup/picasso/Request;

    .line 48
    new-instance v0, Lcom/squareup/picasso/Action$RequestWeakReference;

    iget-object v1, p1, Lcom/squareup/picasso/Picasso;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lcom/squareup/picasso/Action$RequestWeakReference;-><init>(Lcom/squareup/picasso/Action;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/squareup/picasso/Action;->target:Ljava/lang/ref/WeakReference;

    .line 49
    iput-boolean p4, p0, Lcom/squareup/picasso/Action;->skipCache:Z

    .line 50
    iput-boolean p5, p0, Lcom/squareup/picasso/Action;->noFade:Z

    .line 51
    iput p6, p0, Lcom/squareup/picasso/Action;->errorResId:I

    .line 52
    iput-object p7, p0, Lcom/squareup/picasso/Action;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p8, p0, Lcom/squareup/picasso/Action;->key:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 61
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/Action;->cancelled:Z

    .line 62
    return-void
.end method

.method abstract complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.end method

.method abstract error()V
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    iget-object v0, p0, Lcom/squareup/picasso/Action;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    iget-object v0, p0, Lcom/squareup/picasso/Action;->key:Ljava/lang/String;

    return-object v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 81
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    iget-object v0, p0, Lcom/squareup/picasso/Action;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    iget-object v0, p0, Lcom/squareup/picasso/Action;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/squareup/picasso/Action;,"Lcom/squareup/picasso/Action<TT;>;"
    iget-boolean v0, p0, Lcom/squareup/picasso/Action;->cancelled:Z

    return v0
.end method
