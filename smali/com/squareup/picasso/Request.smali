.class public final Lcom/squareup/picasso/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Request$1;,
        Lcom/squareup/picasso/Request$Builder;
    }
.end annotation


# instance fields
.field public final centerCrop:Z

.field public final centerInside:Z

.field public final config:Landroid/graphics/Bitmap$Config;

.field public final hasRotationPivot:Z

.field public final resourceId:I

.field public final rotationDegrees:F

.field public final rotationPivotX:F

.field public final rotationPivotY:F

.field public final targetHeight:I

.field public final targetWidth:I

.field public final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "uri"
    .parameter "resourceId"
    .parameter
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "centerCrop"
    .parameter "centerInside"
    .parameter "rotationDegrees"
    .parameter "rotationPivotX"
    .parameter "rotationPivotY"
    .parameter "hasRotationPivot"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;IIZZFFFZ",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, transformations:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/picasso/Transformation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 72
    iput p2, p0, Lcom/squareup/picasso/Request;->resourceId:I

    .line 73
    if-nez p3, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    .line 78
    :goto_0
    iput p4, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 79
    iput p5, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 80
    iput-boolean p6, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    .line 81
    iput-boolean p7, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    .line 82
    iput p8, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    .line 83
    iput p9, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    .line 84
    iput p10, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    .line 85
    iput-boolean p11, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    .line 86
    iput-object p12, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    .line 87
    return-void

    .line 76
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Request$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p12}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Lcom/squareup/picasso/Request;Lcom/squareup/picasso/Request$1;)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/squareup/picasso/Request;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method hasCustomTransformations()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsMatrixTransform()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsTransformation()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
