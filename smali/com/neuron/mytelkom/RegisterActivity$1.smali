.class Lcom/neuron/mytelkom/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/RegisterActivity;->initializeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/RegisterActivity$1;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/neuron/mytelkom/RegisterActivity$1;->this$0:Lcom/neuron/mytelkom/RegisterActivity;

    invoke-static {v0}, Lcom/neuron/mytelkom/ActivationActivity;->toActivationActivity(Landroid/app/Activity;)V

    .line 68
    return-void
.end method
