.class public Lcom/neuron/mytelkom/model/ConferenceAttendees;
.super Ljava/lang/Object;
.source "ConferenceAttendees.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field email:Ljava/lang/String;

.field name:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field regionId:Ljava/lang/String;

.field role:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->regionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->email:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->phone:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0
    .parameter "regionId"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->regionId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .parameter "role"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->role:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/neuron/mytelkom/model/ConferenceAttendees;->type:Ljava/lang/String;

    .line 50
    return-void
.end method
