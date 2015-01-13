.class Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;
.super Ljava/lang/Object;
.source "CreateNewConferenceActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neuron/mytelkom/CreateNewConferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .parameter "view"
    .parameter "selectedHour"
    .parameter "selectedMinute"

    .prologue
    .line 385
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #setter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->hourStart:I
    invoke-static {v2, p2}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$4(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V

    .line 386
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #setter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->minuteStart:I
    invoke-static {v2, p3}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$5(Lcom/neuron/mytelkom/CreateNewConferenceActivity;I)V

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->hourStart:I
    invoke-static {v3}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$6(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)I

    move-result v3

    #calls: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->pad(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$7(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->minuteStart:I
    invoke-static {v3}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$8(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)I

    move-result v3

    #calls: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->pad(I)Ljava/lang/String;
    invoke-static {v3}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$7(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    .local v0, startStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, timeSelected:Ljava/lang/String;
    iget-object v2, p0, Lcom/neuron/mytelkom/CreateNewConferenceActivity$2;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceActivity;

    #getter for: Lcom/neuron/mytelkom/CreateNewConferenceActivity;->edtJam:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/neuron/mytelkom/CreateNewConferenceActivity;->access$9(Lcom/neuron/mytelkom/CreateNewConferenceActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method
