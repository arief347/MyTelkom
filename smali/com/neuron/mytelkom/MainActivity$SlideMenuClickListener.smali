.class Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideMenuClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/MainActivity;


# direct methods
.method private constructor <init>(Lcom/neuron/mytelkom/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;->this$0:Lcom/neuron/mytelkom/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neuron/mytelkom/MainActivity;Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;-><init>(Lcom/neuron/mytelkom/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 138
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/neuron/mytelkom/MainActivity$SlideMenuClickListener;->this$0:Lcom/neuron/mytelkom/MainActivity;

    #calls: Lcom/neuron/mytelkom/MainActivity;->displayView(I)V
    invoke-static {v0, p3}, Lcom/neuron/mytelkom/MainActivity;->access$0(Lcom/neuron/mytelkom/MainActivity;I)V

    .line 139
    return-void
.end method
