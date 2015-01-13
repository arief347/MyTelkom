.class Lcom/neuron/mytelkom/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/MainActivity;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/MainActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/MainActivity$2;->this$0:Lcom/neuron/mytelkom/MainActivity;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity$2;->this$0:Lcom/neuron/mytelkom/MainActivity;

    #calls: Lcom/neuron/mytelkom/MainActivity;->logout()V
    invoke-static {v0}, Lcom/neuron/mytelkom/MainActivity;->access$1(Lcom/neuron/mytelkom/MainActivity;)V

    .line 281
    return-void
.end method
