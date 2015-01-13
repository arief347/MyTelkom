.class Lcom/neuron/mytelkom/fragment/HelpFragment$1;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/HelpFragment;->initializeActions()V
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
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/HelpFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 68
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    invoke-virtual {v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/HelpFragment$1;->this$0:Lcom/neuron/mytelkom/fragment/HelpFragment;

    #getter for: Lcom/neuron/mytelkom/fragment/HelpFragment;->listHelp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/neuron/mytelkom/fragment/HelpFragment;->access$0(Lcom/neuron/mytelkom/fragment/HelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neuron/mytelkom/model/HelpItem;

    invoke-static {v1, v0}, Lcom/neuron/mytelkom/HelpDetailActivity;->toHelpItem(Landroid/app/Activity;Lcom/neuron/mytelkom/model/HelpItem;)V

    .line 69
    return-void
.end method
