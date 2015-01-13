.class Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ConferenceRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->requestEndConference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    iput-object p2, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;->val$dialog:Landroid/app/ProgressDialog;

    .line 209
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
    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 223
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 214
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    iget-object v0, p0, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment$6;->this$0:Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/fragment/ConferenceRoomFragment;->fetchResponse(Ljava/lang/String;)V

    .line 216
    return-void
.end method
