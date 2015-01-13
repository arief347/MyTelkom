.class final Lcom/squareup/picasso/PicassoDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PicassoDrawable.java"


# static fields
.field private static final DEBUG_PAINT:Landroid/graphics/Paint; = null

.field private static final FADE_DURATION:F = 200.0f


# instance fields
.field alpha:I

.field animating:Z

.field private final debugging:Z

.field private final density:F

.field final image:Landroid/graphics/drawable/BitmapDrawable;

.field private final loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field placeholder:Landroid/graphics/drawable/Drawable;

.field startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "placeholder"
    .parameter "bitmap"
    .parameter "loadedFrom"
    .parameter "noFade"
    .parameter "debugging"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 81
    const/16 v3, 0xff

    iput v3, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, res:Landroid/content/res/Resources;
    iput-boolean p6, p0, Lcom/squareup/picasso/PicassoDrawable;->debugging:Z

    .line 88
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/squareup/picasso/PicassoDrawable;->density:F

    .line 90
    iput-object p4, p0, Lcom/squareup/picasso/PicassoDrawable;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 92
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-eq p4, v3, :cond_1

    if-nez p5, :cond_1

    move v0, v2

    .line 95
    .local v0, fade:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    iput-object p2, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-boolean v2, p0, Lcom/squareup/picasso/PicassoDrawable;->animating:Z

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/squareup/picasso/PicassoDrawable;->startTimeMillis:J

    .line 100
    :cond_0
    return-void

    .line 94
    .end local v0           #fade:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawDebugIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 166
    sget-object v1, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v2, 0x4180

    iget v3, p0, Lcom/squareup/picasso/PicassoDrawable;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/squareup/picasso/PicassoDrawable;->getTrianglePath(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v0

    .line 168
    .local v0, path:Landroid/graphics/Path;
    sget-object v1, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    sget-object v1, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget v2, v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->debugColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v2, 0x4170

    iget v3, p0, Lcom/squareup/picasso/PicassoDrawable;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/squareup/picasso/PicassoDrawable;->getTrianglePath(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private static getTrianglePath(Landroid/graphics/Point;I)Landroid/graphics/Path;
    .locals 5
    .parameter "p1"
    .parameter "width"

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p1

    iget v4, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 177
    .local v0, p2:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, p1

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 179
    .local v1, p3:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 180
    .local v2, path:Landroid/graphics/Path;
    iget v3, p0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    return-object v2
.end method

.method static setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
    .locals 7
    .parameter "target"
    .parameter "context"
    .parameter "bitmap"
    .parameter "loadedFrom"
    .parameter "noFade"
    .parameter "debugging"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 49
    .local v2, placeholder:Landroid/graphics/drawable/Drawable;
    instance-of v1, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 50
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 52
    :cond_0
    new-instance v0, Lcom/squareup/picasso/PicassoDrawable;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/PicassoDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 54
    .local v0, drawable:Lcom/squareup/picasso/PicassoDrawable;
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method static setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "target"
    .parameter "placeholderResId"
    .parameter "placeholderDrawable"

    .prologue
    .line 62
    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 70
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 103
    iget-boolean v2, p0, Lcom/squareup/picasso/PicassoDrawable;->animating:Z

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    :goto_0
    iget-boolean v2, p0, Lcom/squareup/picasso/PicassoDrawable;->debugging:Z

    if-eqz v2, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/picasso/PicassoDrawable;->drawDebugIndicator(Landroid/graphics/Canvas;)V

    .line 127
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/squareup/picasso/PicassoDrawable;->startTimeMillis:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x4348

    div-float v0, v2, v3

    .line 107
    .local v0, normalized:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 108
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/squareup/picasso/PicassoDrawable;->animating:Z

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    :cond_3
    iget v2, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 117
    .local v1, partialAlpha:I
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 118
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v2, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 120
    invoke-virtual {p0}, Lcom/squareup/picasso/PicassoDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 159
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 138
    iput p1, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    .line 139
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 143
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    return-void
.end method
