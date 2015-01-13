// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import com.neuron.mytelkom.utils.Utils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;

public class Ticket
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String compaintStatus;
    String complaintCategoryDescription;
    String complaintDatetime;
    String complaintDescription;
    String customerContact;
    String customerEmail;
    String customerId;
    String customerLocation;
    String customerName;
    String ipAddress;
    String productName;
    String productNo;
    String ticketNo;
    String ticketType;

    public Ticket()
    {
    }

    public static ArrayList getDetailTicket(String s)
    {
        ArrayList arraylist = null;
        JSONObject jsonobject = (new JSONObject(s)).getJSONObject("result");
        if (!jsonobject.getString("statusCode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = new JSONArray(jsonobject.getString("Result"));
        if (jsonarray.length() <= 0) goto _L2; else goto _L3
_L3:
        ArrayList arraylist1 = new ArrayList();
        int i = 0;
_L5:
        if (i >= jsonarray.length())
        {
            return arraylist1;
        }
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        Ticket ticket = new Ticket();
        ticket.setTicketNo(jsonobject1.getString("my_ticket_no"));
        ticket.setTicketType(jsonobject1.getString("my_ticket_type"));
        ticket.setProductName(jsonobject1.getString("my_product_name"));
        ticket.setIpAddress(jsonobject1.getString("my_ip_address"));
        ticket.setCustomerLocation(jsonobject1.getString("my_customer_location"));
        ticket.setCustomerName(jsonobject1.getString("my_customer_name"));
        ticket.setCustomerId(jsonobject1.getString("my_customer_telkomid"));
        ticket.setCustomerContact(jsonobject1.getString("my_customer_contact"));
        ticket.setCustomerEmail(jsonobject1.getString("my_customer_email"));
        ticket.setComplaintCategoryDescription(jsonobject1.getString("complaint_category_description"));
        ticket.setComplaintDatetime(jsonobject1.getString("complaint_datetime"));
        ticket.setComplaintDescription(jsonobject1.getString("complaint_description"));
        ticket.setCompaintStatus(jsonobject1.getString("complaint_status_description"));
        ticket.setProductNo(jsonobject1.getString("complaint_product_no"));
        arraylist1.add(ticket);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
_L6:
        Utils.printLog(exception.getMessage());
        return arraylist;
        exception;
        arraylist = arraylist1;
        if (true) goto _L6; else goto _L2
_L2:
        return null;
    }

    public static LinkedList getListTicket(String s)
    {
        LinkedList linkedlist = null;
        JSONObject jsonobject = (new JSONObject(s)).getJSONObject("result");
        if (!jsonobject.getString("statusCode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = jsonobject.getJSONArray("Result");
        if (jsonarray.length() <= 0) goto _L2; else goto _L3
_L3:
        LinkedList linkedlist1 = new LinkedList();
        int i = 0;
_L5:
        if (i >= jsonarray.length())
        {
            return linkedlist1;
        }
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        Ticket ticket = new Ticket();
        ticket.setTicketNo(jsonobject1.getString("my_ticket_no"));
        ticket.setTicketType(jsonobject1.getString("my_ticket_type"));
        ticket.setProductName(jsonobject1.getString("my_product_name"));
        ticket.setIpAddress(jsonobject1.getString("my_ip_address"));
        ticket.setCustomerLocation(jsonobject1.getString("my_customer_location"));
        ticket.setCustomerName(jsonobject1.getString("my_customer_name"));
        ticket.setCustomerId(jsonobject1.getString("my_customer_telkomid"));
        ticket.setCustomerContact(jsonobject1.getString("my_customer_contact"));
        ticket.setCustomerEmail(jsonobject1.getString("my_customer_email"));
        ticket.setComplaintCategoryDescription(jsonobject1.getString("complaint_category_description"));
        ticket.setComplaintDatetime(jsonobject1.getString("complaint_datetime"));
        ticket.setComplaintDescription(jsonobject1.getString("complaint_description"));
        ticket.setCompaintStatus(jsonobject1.getString("complaint_status_description"));
        ticket.setProductNo(jsonobject1.getString("complaint_product_no"));
        linkedlist1.add(ticket);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
_L6:
        Utils.printLog(exception.getMessage());
        return linkedlist;
        exception;
        linkedlist = linkedlist1;
        if (true) goto _L6; else goto _L2
_L2:
        return null;
    }

    public String getCompaintStatus()
    {
        return compaintStatus;
    }

    public String getComplaintCategoryDescription()
    {
        return complaintCategoryDescription;
    }

    public String getComplaintDatetime()
    {
        return complaintDatetime;
    }

    public String getComplaintDescription()
    {
        return complaintDescription;
    }

    public String getCustomerContact()
    {
        return customerContact;
    }

    public String getCustomerEmail()
    {
        return customerEmail;
    }

    public String getCustomerId()
    {
        return customerId;
    }

    public String getCustomerLocation()
    {
        return customerLocation;
    }

    public String getCustomerName()
    {
        return customerName;
    }

    public String getIpAddress()
    {
        return ipAddress;
    }

    public String getProductName()
    {
        return productName;
    }

    public String getProductNo()
    {
        return productNo;
    }

    public String getTicketNo()
    {
        return ticketNo;
    }

    public String getTicketType()
    {
        return ticketType;
    }

    public void setCompaintStatus(String s)
    {
        compaintStatus = s;
    }

    public void setComplaintCategoryDescription(String s)
    {
        complaintCategoryDescription = s;
    }

    public void setComplaintDatetime(String s)
    {
        complaintDatetime = s;
    }

    public void setComplaintDescription(String s)
    {
        complaintDescription = s;
    }

    public void setCustomerContact(String s)
    {
        customerContact = s;
    }

    public void setCustomerEmail(String s)
    {
        customerEmail = s;
    }

    public void setCustomerId(String s)
    {
        customerId = s;
    }

    public void setCustomerLocation(String s)
    {
        customerLocation = s;
    }

    public void setCustomerName(String s)
    {
        customerName = s;
    }

    public void setIpAddress(String s)
    {
        ipAddress = s;
    }

    public void setProductName(String s)
    {
        productName = s;
    }

    public void setProductNo(String s)
    {
        productNo = s;
    }

    public void setTicketNo(String s)
    {
        ticketNo = s;
    }

    public void setTicketType(String s)
    {
        ticketType = s;
    }
}
