.class Lcom/neuron/mytelkom/base/BaseFragment$1;
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

.field private final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/base/BaseFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/base/BaseFragment$1;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    iput-object p2, p0, Lcom/neuron/mytelkom/base/BaseFragment$1;->val$productId:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/neuron/mytelkom/base/BaseFragment$1;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    iget-object v1, p0, Lcom/neuron/mytelkom/base/BaseFragment$1;->val$productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/base/BaseFragment;->deleteProduct(Ljava/lang/String;)V

    .line 93
    return-void
.end method
