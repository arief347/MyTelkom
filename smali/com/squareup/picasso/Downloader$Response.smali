.class public Lcom/squareup/picasso/Downloader$Response;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final cached:Z

.field final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "loadedFromCache"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->stream:Ljava/io/InputStream;

    .line 62
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$Response;->bitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .parameter "stream"
    .parameter "loadedFromCache"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$Response;->stream:Ljava/io/InputStream;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->stream:Ljava/io/InputStream;

    return-object v0
.end method
