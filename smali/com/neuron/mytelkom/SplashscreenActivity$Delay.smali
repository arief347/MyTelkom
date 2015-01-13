.class Lcom/neuron/mytelkom/SplashscreenActivity$Delay;
.super Landroid/os/AsyncTask;
.source "SplashscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/SplashscreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Delay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/SplashscreenActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SplashscreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;->this$0:Lcom/neuron/mytelkom/SplashscreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 42
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/neuron/mytelkom/SplashscreenActivity$Delay;->this$0:Lcom/neuron/mytelkom/SplashscreenActivity;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/SplashscreenActivity;->route()V

    .line 55
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    return-void
.end method
