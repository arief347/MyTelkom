.class Lcom/squareup/picasso/MediaStoreBitmapHunter;
.super Lcom/squareup/picasso/ContentStreamBitmapHunter;
.source "MediaStoreBitmapHunter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    }
.end annotation


# static fields
.field private static final CONTENT_ORIENTATION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter;->CONTENT_ORIENTATION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 0
    .parameter "context"
    .parameter "picasso"
    .parameter "dispatcher"
    .parameter "cache"
    .parameter "stats"
    .parameter "action"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/squareup/picasso/ContentStreamBitmapHunter;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 44
    return-void
.end method

.method static getExitOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 9
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter;->CONTENT_ORIENTATION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 95
    :cond_0
    if-eqz v6, :cond_1

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    :cond_2
    :goto_0
    return v0

    .line 90
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 95
    if-eqz v6, :cond_2

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v7

    .line 95
    .local v7, ignored:Ljava/lang/RuntimeException;
    if-eqz v6, :cond_4

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 95
    .end local v7           #ignored:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method static getPicassoKind(II)Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    .locals 1
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 75
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    if-gt p1, v0, :cond_0

    .line 76
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MICRO:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    if-gt p0, v0, :cond_1

    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    if-gt p1, v0, :cond_1

    .line 78
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->MINI:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    goto :goto_0
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v6, p0, Lcom/squareup/picasso/MediaStoreBitmapHunter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v6, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v0, v6}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->getExitOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->setExifRotation(I)V

    .line 50
    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    iget v6, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v7, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v6, v7}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->getPicassoKind(II)Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    move-result-object v4

    .line 52
    .local v4, picassoKind:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    sget-object v6, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->FULL:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    if-ne v4, v6, :cond_1

    .line 53
    invoke-super {p0, p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 71
    .end local v4           #picassoKind:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    :cond_0
    :goto_0
    return-object v5

    .line 56
    .restart local v4       #picassoKind:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    :cond_1
    iget-object v6, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 58
    .local v1, id:J
    invoke-static {p1}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 59
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    iget v6, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v7, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    iget v8, v4, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    iget v9, v4, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    invoke-static {v6, v7, v8, v9, v3}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 64
    iget v6, v4, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->androidKind:I

    invoke-static {v0, v1, v2, v6, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 66
    .local v5, result:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 71
    .end local v1           #id:J
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #picassoKind:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;
    .end local v5           #result:Landroid/graphics/Bitmap;
    :cond_2
    invoke-super {p0, p1}, Lcom/squareup/picasso/ContentStreamBitmapHunter;->decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method
