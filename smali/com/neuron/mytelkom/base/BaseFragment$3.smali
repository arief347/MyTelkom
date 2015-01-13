.class Lcom/neuron/mytelkom/base/BaseFragment$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neuron/mytelkom/base/BaseFragment;->deleteProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neuron/mytelkom/base/BaseFragment;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/neuron/mytelkom/base/BaseFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    iput-object p2, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    .line 135
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 171
    iget-object v0, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    sget-object v0, Lcom/neuron/mytelkom/utils/Constant;->APP_TAG:Ljava/lang/String;

    const-string v1, "Error Delete Product"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    .line 141
    iget-object v5, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 142
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 143
    .local v3, response:Ljava/lang/String;
    invoke-static {v3}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    .line 145
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, object:Lorg/json/JSONObject;
    const-string v5, "rescode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    const-string v5, "Result"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, result:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, resObj:Lorg/json/JSONObject;
    const-string v5, "rescode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "resmsg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 164
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    .end local v4           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 155
    .restart local v1       #object:Lorg/json/JSONObject;
    .restart local v2       #resObj:Lorg/json/JSONObject;
    .restart local v4       #result:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "resmsg"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #resObj:Lorg/json/JSONObject;
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #object:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/neuron/mytelkom/base/BaseFragment$3;->this$0:Lcom/neuron/mytelkom/base/BaseFragment;

    invoke-virtual {v5}, Lcom/neuron/mytelkom/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "resmsg"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/neuron/mytelkom/utils/Utils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
