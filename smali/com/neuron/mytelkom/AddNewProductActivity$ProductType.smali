.class public final enum Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;
.super Ljava/lang/Enum;
.source "AddNewProductActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/AddNewProductActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

.field public static final enum FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

.field public static final enum IME:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

.field public static final enum PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

.field public static final enum SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    const-string v1, "PTSN"

    invoke-direct {v0, v1, v2}, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    new-instance v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    const-string v1, "SPEEDY"

    invoke-direct {v0, v1, v3}, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    new-instance v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    const-string v1, "FLEXI"

    invoke-direct {v0, v1, v4}, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    new-instance v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    const-string v1, "IME"

    invoke-direct {v0, v1, v5}, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->IME:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->PTSN:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->SPEEDY:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->FLEXI:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->IME:Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->ENUM$VALUES:[Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    return-object v0
.end method

.method public static values()[Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;->ENUM$VALUES:[Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    array-length v1, v0

    new-array v2, v1, [Lcom/neuron/mytelkom/AddNewProductActivity$ProductType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
