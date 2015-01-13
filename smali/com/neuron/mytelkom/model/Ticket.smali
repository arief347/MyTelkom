.class public Lcom/neuron/mytelkom/model/Ticket;
.super Ljava/lang/Object;
.source "Ticket.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field compaintStatus:Ljava/lang/String;

.field complaintCategoryDescription:Ljava/lang/String;

.field complaintDatetime:Ljava/lang/String;

.field complaintDescription:Ljava/lang/String;

.field customerContact:Ljava/lang/String;

.field customerEmail:Ljava/lang/String;

.field customerId:Ljava/lang/String;

.field customerLocation:Ljava/lang/String;

.field customerName:Ljava/lang/String;

.field ipAddress:Ljava/lang/String;

.field productName:Ljava/lang/String;

.field productNo:Ljava/lang/String;

.field ticketNo:Ljava/lang/String;

.field ticketType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDetailTicket(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/neuron/mytelkom/model/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const/4 v4, 0x0

    .line 178
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v7, objs:Lorg/json/JSONObject;
    const-string v10, "result"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 180
    .local v8, res:Lorg/json/JSONObject;
    const-string v10, "statusCode"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "00"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 181
    const-string v10, "Result"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, items:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 184
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    const/4 v9, 0x0

    .line 186
    .local v9, ticket:Lcom/neuron/mytelkom/model/Ticket;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v2, v10, :cond_1

    move-object v4, v5

    .line 213
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #items:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .end local v7           #objs:Lorg/json/JSONObject;
    .end local v8           #res:Lorg/json/JSONObject;
    .end local v9           #ticket:Lcom/neuron/mytelkom/model/Ticket;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 187
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #items:Ljava/lang/String;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v7       #objs:Lorg/json/JSONObject;
    .restart local v8       #res:Lorg/json/JSONObject;
    .restart local v9       #ticket:Lcom/neuron/mytelkom/model/Ticket;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 188
    .local v6, object:Lorg/json/JSONObject;
    new-instance v9, Lcom/neuron/mytelkom/model/Ticket;

    .end local v9           #ticket:Lcom/neuron/mytelkom/model/Ticket;
    invoke-direct {v9}, Lcom/neuron/mytelkom/model/Ticket;-><init>()V

    .line 189
    .restart local v9       #ticket:Lcom/neuron/mytelkom/model/Ticket;
    const-string v10, "my_ticket_no"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setTicketNo(Ljava/lang/String;)V

    .line 190
    const-string v10, "my_ticket_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setTicketType(Ljava/lang/String;)V

    .line 191
    const-string v10, "my_product_name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setProductName(Ljava/lang/String;)V

    .line 192
    const-string v10, "my_ip_address"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setIpAddress(Ljava/lang/String;)V

    .line 193
    const-string v10, "my_customer_location"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerLocation(Ljava/lang/String;)V

    .line 194
    const-string v10, "my_customer_name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerName(Ljava/lang/String;)V

    .line 195
    const-string v10, "my_customer_telkomid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerId(Ljava/lang/String;)V

    .line 196
    const-string v10, "my_customer_contact"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerContact(Ljava/lang/String;)V

    .line 197
    const-string v10, "my_customer_email"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerEmail(Ljava/lang/String;)V

    .line 198
    const-string v10, "complaint_category_description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setComplaintCategoryDescription(Ljava/lang/String;)V

    .line 199
    const-string v10, "complaint_datetime"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setComplaintDatetime(Ljava/lang/String;)V

    .line 200
    const-string v10, "complaint_description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setComplaintDescription(Ljava/lang/String;)V

    .line 201
    const-string v10, "complaint_status_description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setCompaintStatus(Ljava/lang/String;)V

    .line 202
    const-string v10, "complaint_product_no"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/neuron/mytelkom/model/Ticket;->setProductNo(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 208
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #items:Ljava/lang/String;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #objs:Lorg/json/JSONObject;
    .end local v8           #res:Lorg/json/JSONObject;
    .end local v9           #ticket:Lcom/neuron/mytelkom/model/Ticket;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #items:Ljava/lang/String;
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v7       #objs:Lorg/json/JSONObject;
    .restart local v8       #res:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/neuron/mytelkom/model/Ticket;>;"
    goto :goto_2
.end method

.method public static getListTicket(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/neuron/mytelkom/model/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v4, 0x0

    .line 137
    .local v4, listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 139
    .local v6, obj:Lorg/json/JSONObject;
    const-string v9, "statusCode"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 140
    const-string v10, "00"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 141
    const-string v9, "Result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 142
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 143
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v4           #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .local v5, listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    const/4 v8, 0x0

    .line 145
    .local v8, ticket:Lcom/neuron/mytelkom/model/Ticket;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_1

    move-object v4, v5

    .line 171
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v8           #ticket:Lcom/neuron/mytelkom/model/Ticket;
    .restart local v4       #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 146
    .end local v4           #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v6       #obj:Lorg/json/JSONObject;
    .restart local v8       #ticket:Lcom/neuron/mytelkom/model/Ticket;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 147
    .local v7, object:Lorg/json/JSONObject;
    new-instance v8, Lcom/neuron/mytelkom/model/Ticket;

    .end local v8           #ticket:Lcom/neuron/mytelkom/model/Ticket;
    invoke-direct {v8}, Lcom/neuron/mytelkom/model/Ticket;-><init>()V

    .line 148
    .restart local v8       #ticket:Lcom/neuron/mytelkom/model/Ticket;
    const-string v9, "my_ticket_no"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setTicketNo(Ljava/lang/String;)V

    .line 149
    const-string v9, "my_ticket_type"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setTicketType(Ljava/lang/String;)V

    .line 150
    const-string v9, "my_product_name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setProductName(Ljava/lang/String;)V

    .line 151
    const-string v9, "my_ip_address"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setIpAddress(Ljava/lang/String;)V

    .line 152
    const-string v9, "my_customer_location"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerLocation(Ljava/lang/String;)V

    .line 153
    const-string v9, "my_customer_name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerName(Ljava/lang/String;)V

    .line 154
    const-string v9, "my_customer_telkomid"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerId(Ljava/lang/String;)V

    .line 155
    const-string v9, "my_customer_contact"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerContact(Ljava/lang/String;)V

    .line 156
    const-string v9, "my_customer_email"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setCustomerEmail(Ljava/lang/String;)V

    .line 157
    const-string v9, "complaint_category_description"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setComplaintCategoryDescription(Ljava/lang/String;)V

    .line 158
    const-string v9, "complaint_datetime"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setComplaintDatetime(Ljava/lang/String;)V

    .line 159
    const-string v9, "complaint_description"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setComplaintDescription(Ljava/lang/String;)V

    .line 160
    const-string v9, "complaint_status_description"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setCompaintStatus(Ljava/lang/String;)V

    .line 161
    const-string v9, "complaint_product_no"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neuron/mytelkom/model/Ticket;->setProductNo(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 167
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #ticket:Lcom/neuron/mytelkom/model/Ticket;
    .restart local v4       #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/neuron/mytelkom/utils/Utils;->printLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v6       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    .restart local v4       #listItem:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/neuron/mytelkom/model/Ticket;>;"
    goto :goto_2
.end method


# virtual methods
.method public getCompaintStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->compaintStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaintCategoryDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->complaintCategoryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaintDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->complaintDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaintDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->complaintDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->customerContact:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->customerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->customerLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->productNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->ticketNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/neuron/mytelkom/model/Ticket;->ticketType:Ljava/lang/String;

    return-object v0
.end method

.method public setCompaintStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "compaintStatus"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->compaintStatus:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setComplaintCategoryDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "complaintCategoryDescription"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->complaintCategoryDescription:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setComplaintDatetime(Ljava/lang/String;)V
    .locals 0
    .parameter "complaintDatetime"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->complaintDatetime:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setComplaintDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "complaintDescription"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->complaintDescription:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCustomerContact(Ljava/lang/String;)V
    .locals 0
    .parameter "customerContact"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->customerContact:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCustomerEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "customerEmail"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->customerEmail:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0
    .parameter "customerId"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->customerId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCustomerLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "customerLocation"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->customerLocation:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCustomerName(Ljava/lang/String;)V
    .locals 0
    .parameter "customerName"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->customerName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->ipAddress:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .parameter "productName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->productName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setProductNo(Ljava/lang/String;)V
    .locals 0
    .parameter "productNo"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->productNo:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTicketNo(Ljava/lang/String;)V
    .locals 0
    .parameter "ticketNo"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->ticketNo:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTicketType(Ljava/lang/String;)V
    .locals 0
    .parameter "ticketType"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/neuron/mytelkom/model/Ticket;->ticketType:Ljava/lang/String;

    .line 36
    return-void
.end method
