.class Lcom/neuron/mytelkom/EditProfileActivity$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "EditProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/EditProfileActivity;->updateProfileData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/EditProfileActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/EditProfileActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/EditProfileActivity$4;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    iput-object p2, p0, Lcom/neuron/mytelkom/EditProfileActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    .line 304
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
    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 321
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 322
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 310
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    iget-object v0, p0, Lcom/neuron/mytelkom/EditProfileActivity$4;->this$0:Lcom/neuron/mytelkom/EditProfileActivity;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/neuron/mytelkom/EditProfileActivity;->fetchResponse(Ljava/lang/String;)V

    .line 313
    return-void
.end method
