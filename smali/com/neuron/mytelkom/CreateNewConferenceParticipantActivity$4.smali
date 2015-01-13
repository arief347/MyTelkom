.class Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CreateNewConferenceParticipantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->createNewConference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    .line 297
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 313
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    iget-object v0, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    .line 315
    const-string v1, "Terjadi kesalahan silakan coba kembali"

    const/4 v2, 0x1

    .line 314
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 302
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 303
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 304
    .local v0, res:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity$4;->this$0:Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/CreateNewConferenceParticipantActivity;->fetchResponse(Ljava/lang/String;)V

    .line 306
    return-void
.end method
