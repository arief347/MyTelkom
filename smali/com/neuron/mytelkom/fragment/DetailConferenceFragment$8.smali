.class Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DetailConferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->requestCancelConference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    iput-object p2, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    .line 378
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 394
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 383
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 385
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment$8;->this$0:Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;

    invoke-virtual {v1, v0}, Lcom/neuron/mytelkom/fragment/DetailConferenceFragment;->fetchCancelResponse(Ljava/lang/String;)V

    .line 387
    return-void
.end method
