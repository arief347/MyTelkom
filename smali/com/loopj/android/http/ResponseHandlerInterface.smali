.class public interface abstract Lcom/loopj/android/http/ResponseHandlerInterface;
.super Ljava/lang/Object;
.source "ResponseHandlerInterface.java"


# virtual methods
.method public abstract getRequestHeaders()[Lorg/apache/http/Header;
.end method

.method public abstract getRequestURI()Ljava/net/URI;
.end method

.method public abstract sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract sendFinishMessage()V
.end method

.method public abstract sendProgressMessage(II)V
.end method

.method public abstract sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendRetryMessage()V
.end method

.method public abstract sendStartMessage()V
.end method

.method public abstract sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
.end method

.method public abstract setRequestHeaders([Lorg/apache/http/Header;)V
.end method

.method public abstract setRequestURI(Ljava/net/URI;)V
.end method

.method public abstract setUseSynchronousMode(Z)V
.end method
