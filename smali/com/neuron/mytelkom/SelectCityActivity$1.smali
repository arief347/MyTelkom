.class Lcom/neuron/mytelkom/SelectCityActivity$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/SelectCityActivity;->initializeActions()V
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
.field final synthetic this$0:Lcom/neuron/mytelkom/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/SelectCityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/SelectCityActivity$1;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 81
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/neuron/mytelkom/SelectCityActivity;->KEY_CITY_SELECTED:Ljava/lang/String;

    iget-object v1, p0, Lcom/neuron/mytelkom/SelectCityActivity$1;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    #getter for: Lcom/neuron/mytelkom/SelectCityActivity;->listCity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/neuron/mytelkom/SelectCityActivity;->access$0(Lcom/neuron/mytelkom/SelectCityActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/neuron/mytelkom/SelectCityActivity$1;->this$0:Lcom/neuron/mytelkom/SelectCityActivity;

    sget v2, Lcom/neuron/mytelkom/SelectCityActivity;->RESULT_CODE:I

    invoke-virtual {v1, v2, v0}, Lcom/neuron/mytelkom/SelectCityActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    return-void
.end method
