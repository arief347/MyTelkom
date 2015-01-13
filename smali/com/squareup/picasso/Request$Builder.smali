.class public final Lcom/squareup/picasso/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private centerCrop:Z

.field private centerInside:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private hasRotationPivot:Z

.field private resourceId:I

.field private rotationDegrees:F

.field private rotationPivotX:F

.field private rotationPivotY:F

.field private targetHeight:I

.field private targetWidth:I

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Request$Builder;->setResourceId(I)Lcom/squareup/picasso/Request$Builder;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Request$Builder;->setUri(Landroid/net/Uri;)Lcom/squareup/picasso/Request$Builder;

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .parameter "uri"
    .parameter "resourceId"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 143
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 144
    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/Request;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iget-object v0, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 148
    iget v0, p1, Lcom/squareup/picasso/Request;->resourceId:I

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 149
    iget v0, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 150
    iget v0, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    .line 151
    iget-boolean v0, p1, Lcom/squareup/picasso/Request;->centerCrop:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 152
    iget-boolean v0, p1, Lcom/squareup/picasso/Request;->centerInside:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    .line 153
    iget v0, p1, Lcom/squareup/picasso/Request;->rotationDegrees:F

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 154
    iget v0, p1, Lcom/squareup/picasso/Request;->rotationPivotX:F

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    .line 155
    iget v0, p1, Lcom/squareup/picasso/Request;->rotationPivotY:F

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    .line 156
    iget-boolean v0, p1, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    .line 157
    iget-object v0, p1, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    .line 160
    :cond_0
    iget-object v0, p1, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/picasso/Request;Lcom/squareup/picasso/Request$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Request$Builder;-><init>(Lcom/squareup/picasso/Request;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/picasso/Request;
    .locals 14

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    new-instance v0, Lcom/squareup/picasso/Request;

    iget-object v1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    iget-object v3, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    iget v4, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    iget v5, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    iget-boolean v6, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    iget-boolean v7, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    iget v8, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    iget v9, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    iget v10, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    iget-boolean v11, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    iget-object v12, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Request$1;)V

    return-object v0
.end method

.method public centerCrop()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 231
    return-object p0
.end method

.method public centerInside()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    .line 249
    return-object p0
.end method

.method public clearCenterCrop()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 237
    return-object p0
.end method

.method public clearCenterInside()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    .line 255
    return-object p0
.end method

.method public clearResize()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 215
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    .line 216
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 217
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    .line 218
    return-object p0
.end method

.method public clearRotation()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 276
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    .line 277
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    .line 279
    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Request$Builder;
    .locals 0
    .parameter "config"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    .line 285
    return-object p0
.end method

.method hasImage()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSize()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resize(II)Lcom/squareup/picasso/Request$Builder;
    .locals 2
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 201
    if-gtz p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    if-gtz p2, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 208
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    .line 209
    return-object p0
.end method

.method public rotate(F)Lcom/squareup/picasso/Request$Builder;
    .locals 0
    .parameter "degrees"

    .prologue
    .line 260
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 261
    return-object p0
.end method

.method public rotate(FFF)Lcom/squareup/picasso/Request$Builder;
    .locals 1
    .parameter "degrees"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    .line 266
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 267
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    .line 268
    iput p3, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    .line 270
    return-object p0
.end method

.method public setResourceId(I)Lcom/squareup/picasso/Request$Builder;
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image resource ID may not be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 196
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/squareup/picasso/Request$Builder;
    .locals 2
    .parameter "uri"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 182
    return-object p0
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;
    .locals 2
    .parameter "transformation"

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-object p0
.end method
