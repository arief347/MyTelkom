.class public Lcom/neuron/mytelkom/utils/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static conferenceData:[[Ljava/lang/String;

.field public static conferenceRoom:[Ljava/lang/String;

.field public static dashboardIcon:[I

.field public static dashboardMenu:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/neuron/mytelkom/utils/Data;->dashboardIcon:[I

    .line 14
    new-array v0, v1, [[Ljava/lang/String;

    .line 15
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Telkom Audio Conference"

    aput-object v2, v1, v4

    const-string v2, "Manage conference with your collegue"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 16
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Telepon Rumah"

    aput-object v2, v1, v4

    const-string v2, "View your bill status"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 17
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Speedy"

    aput-object v2, v1, v4

    const-string v2, "View your bill status"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 18
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Flexi"

    aput-object v2, v1, v4

    const-string v2, "View your bill status"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 19
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IME"

    aput-object v3, v2, v4

    const-string v3, "Information, Media, and Edutainment"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lcom/neuron/mytelkom/utils/Data;->dashboardMenu:[[Ljava/lang/String;

    .line 22
    new-array v0, v6, [[Ljava/lang/String;

    .line 23
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Rapat Pembahasan"

    aput-object v2, v1, v4

    const-string v2, "Kamis, 10 Juli 2014"

    aput-object v2, v1, v5

    const-string v2, "terjadwal"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 24
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Rapat Koordinasi Project"

    aput-object v2, v1, v4

    const-string v2, "Senin, 7 Juli 2014"

    aput-object v2, v1, v5

    const-string v2, "berlangsung"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 22
    sput-object v0, Lcom/neuron/mytelkom/utils/Data;->conferenceData:[[Ljava/lang/String;

    .line 27
    new-array v0, v7, [Ljava/lang/String;

    .line 28
    const-string v1, "082121212093"

    aput-object v1, v0, v4

    const-string v1, "081320202020"

    aput-object v1, v0, v5

    const-string v1, "02272772272"

    aput-object v1, v0, v6

    .line 27
    sput-object v0, Lcom/neuron/mytelkom/utils/Data;->conferenceRoom:[Ljava/lang/String;

    .line 29
    return-void

    .line 6
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
