.class Lcom/neuron/mytelkom/fragment/MyBroadbandFragment$1;
.super Ljava/lang/Object;
.source "MyBroadbandFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/MyBroadbandFragment;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/MyBroadbandFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/MyBroadbandFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/MyBroadbandFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/MyBroadbandFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/MyBroadbandFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/MyBroadbandFragment;

    invoke-virtual {v0, p3}, Lcom/neuron/mytelkom/fragment/MyBroadbandFragment;->toDetilBillingFragment(I)V

    .line 106
    return-void
.end method
