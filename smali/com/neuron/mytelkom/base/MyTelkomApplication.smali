.class public Lcom/neuron/mytelkom/base/MyTelkomApplication;
.super Landroid/app/Application;
.source "MyTelkomApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    const-string v0, "fonts/MyriadPro-Regular.otf"

    const/high16 v1, 0x7f01

    invoke-static {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Ljava/lang/String;I)V

    .line 14
    return-void
.end method
