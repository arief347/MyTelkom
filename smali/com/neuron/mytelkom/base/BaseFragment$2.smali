.class Lcom/neuron/mytelkom/base/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/base/BaseFragment;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/base/BaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/base/BaseFragment$2;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 100
    return-void
.end method
