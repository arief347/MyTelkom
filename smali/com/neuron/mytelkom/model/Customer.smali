.class public Lcom/neuron/mytelkom/model/Customer;
.super Ljava/lang/Object;
.source "Customer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7f77d9146b0be63cL


# instance fields
.field address:Ljava/lang/String;

.field comercial:Ljava/lang/String;

.field location:Ljava/lang/String;

.field name:Ljava/lang/String;

.field paymentDate:Ljava/lang/String;

.field paymentTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Customer;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getComercial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Customer;->comercial:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Customer;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Customer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Customer;->paymentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Customer;->paymentTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Customer;->address:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setComercial(Ljava/lang/String;)V
    .locals 0
    .parameter "comercial"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Customer;->comercial:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Customer;->location:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Customer;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPaymentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentDate"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Customer;->paymentDate:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPaymentTime(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentTime"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Customer;->paymentTime:Ljava/lang/String;

    .line 59
    return-void
.end method
