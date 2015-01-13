// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import android.util.Log;
import com.neuron.mytelkom.utils.Constant;
import com.neuron.mytelkom.utils.Utils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.model:
//            Customer, PstnDetailSummary

public class Product
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String adminReg;
    String amount;
    String cicilan;
    String curency;
    Customer customer;
    String date;
    String encryptedValidation;
    String fastel;
    ArrayList listPstnDetails;
    String location;
    String paymentdate;
    String paytmenttime;
    String period;
    String productDesc;
    String productNo;
    String productPackage;
    String productType;
    String regDate;
    String relation;
    String segmentasi;
    String status;
    String uid;

    public Product()
    {
    }

    public static Product getFlexiDetailProduct(String s)
    {
        Product product = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getJSONObject("result").getString("statusCode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1;
        boolean flag;
        jsonobject1 = jsonobject.getJSONObject("result").getJSONObject("Result");
        flag = jsonobject1.toString().equals("");
        product = null;
        if (flag) goto _L2; else goto _L3
_L3:
        Product product1 = new Product();
        JSONObject jsonobject2;
        jsonobject2 = jsonobject1.getJSONObject("PSTN");
        product = new Product();
        ArrayList arraylist;
        String s1;
        product.setPeriod(jsonobject2.getString("period"));
        product.setCurency(jsonobject2.getString("curancy"));
        product.setAmount(jsonobject2.getString("amount"));
        product.setStatus(jsonobject2.getString("status"));
        product.setCicilan(jsonobject2.getString("cicilan"));
        product.setLocation(jsonobject2.getString("location"));
        product.setPaymentdate(jsonobject2.getString("paymentdate"));
        product.setPaytmenttime(jsonobject2.getString("paymenttime"));
        arraylist = new ArrayList();
        s1 = jsonobject2.getString("detailsummary");
        JSONObject jsonobject3;
        Iterator iterator;
        jsonobject3 = new JSONObject(s1);
        iterator = jsonobject3.keys();
_L7:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        product.setListPstnDetails(arraylist);
        JSONObject jsonobject4 = jsonobject2.getJSONObject("customer");
        Customer customer1 = new Customer();
        customer1.setName((new StringBuilder()).append(jsonobject4.getString("name")).toString());
        customer1.setAddress((new StringBuilder()).append(jsonobject4.getString("address")).toString());
        customer1.setComercial((new StringBuilder()).append(jsonobject4.getString("comercial")).toString());
        customer1.setLocation((new StringBuilder()).append(jsonobject4.getString("location")).toString());
        customer1.setPaymentDate((new StringBuilder()).append(jsonobject4.getString("paymentdate")).toString());
        customer1.setPaymentTime((new StringBuilder()).append(jsonobject4.getString("paymenttime")).toString());
        product.setCustomer(customer1);
        product.setFastel(jsonobject2.getString("fastel"));
        product.setSegmentasi(jsonobject2.getString("segmentasi"));
        return product;
_L5:
        Object obj;
        obj = jsonobject3.get((String)iterator.next());
        Utils.printLog(obj.toString());
        if (obj.toString().startsWith("id")) goto _L4; else goto _L6
_L6:
        JSONObject jsonobject5 = new JSONObject(obj.toString());
        PstnDetailSummary pstndetailsummary = new PstnDetailSummary();
        pstndetailsummary.setTime((new StringBuilder()).append(jsonobject5.getString("paymenttime")).toString());
        pstndetailsummary.setDate((new StringBuilder()).append(jsonobject5.getString("paymentdate")).toString());
        pstndetailsummary.setDuedate((new StringBuilder()).append(jsonobject5.getString("duedate")).toString());
        pstndetailsummary.setLocation((new StringBuilder()).append(jsonobject5.getString("paymentlocation")).toString());
        pstndetailsummary.setStatus((new StringBuilder()).append(jsonobject5.getString("status")).toString());
        pstndetailsummary.setNamount((new StringBuilder()).append(jsonobject5.getString("amount")).toString());
        pstndetailsummary.setCurrency("curency");
        arraylist.add(pstndetailsummary);
          goto _L7
        Exception exception1;
        exception1;
        Log.d(Constant.APP_TAG, exception1.getMessage());
        return null;
        Exception exception;
        exception;
_L8:
        Log.d(Constant.APP_TAG, exception.getMessage());
        return product;
        exception;
        product = product1;
        if (true) goto _L8; else goto _L2
_L2:
        return null;
    }

    public static LinkedList getListProduct(String s, String s1)
    {
        JSONArray jsonarray;
        LinkedList linkedlist;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getJSONObject("result").getString("statusCode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_252;
        }
        jsonarray = (new JSONObject(jsonobject.getJSONObject("result").getString("Result"))).getJSONArray(s1);
        linkedlist = new LinkedList();
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            return linkedlist;
        }
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        Product product = new Product();
        product.setProductNo(jsonobject1.getString("product_no"));
        product.setProductType(jsonobject1.getString("product_type"));
        product.setProductPackage(jsonobject1.getString("product_package"));
        product.setUid(jsonobject1.getString("uid"));
        product.setStatus(jsonobject1.getString("status"));
        product.setRelation(jsonobject1.getString("relation"));
        product.setRegDate(jsonobject1.getString("regdate"));
        product.setAdminReg(jsonobject1.getString("adminreg"));
        product.setEncryptedValidation(jsonobject1.getString("encrypted_validation"));
        product.setProductDesc(jsonobject1.getString("product_desc"));
        linkedlist.add(product);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
_L4:
        Utils.printLog(exception.getMessage());
        return null;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    public static Product getPstnDetailProduct(String s)
    {
        Product product = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getJSONObject("result").getString("statusCode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1;
        boolean flag;
        jsonobject1 = jsonobject.getJSONObject("result").getJSONObject("Result");
        flag = jsonobject1.toString().equals("");
        product = null;
        if (flag) goto _L2; else goto _L3
_L3:
        Product product1 = new Product();
        JSONObject jsonobject2;
        jsonobject2 = jsonobject1.getJSONObject("PSTN");
        product = new Product();
        ArrayList arraylist;
        String s1;
        product.setPeriod(jsonobject2.getString("period"));
        product.setCurency(jsonobject2.getString("curancy"));
        product.setAmount(jsonobject2.getString("amount"));
        product.setStatus(jsonobject2.getString("status"));
        product.setCicilan(jsonobject2.getString("cicilan"));
        product.setLocation(jsonobject2.getString("location"));
        product.setPaymentdate(jsonobject2.getString("paymentdate"));
        product.setPaytmenttime(jsonobject2.getString("paymenttime"));
        arraylist = new ArrayList();
        s1 = jsonobject2.getString("detailsummary");
        JSONArray jsonarray = new JSONArray(s1);
        int i = 0;
_L4:
        if (i < jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_422;
        }
        product.setListPstnDetails(arraylist);
        JSONObject jsonobject4 = jsonobject2.getJSONObject("customer");
        Customer customer1 = new Customer();
        customer1.setName((new StringBuilder()).append(jsonobject4.getString("name")).toString());
        customer1.setAddress((new StringBuilder()).append(jsonobject4.getString("address")).toString());
        customer1.setComercial((new StringBuilder()).append(jsonobject4.getString("comercial")).toString());
        customer1.setLocation((new StringBuilder()).append(jsonobject4.getString("location")).toString());
        customer1.setPaymentDate((new StringBuilder()).append(jsonobject4.getString("paymentdate")).toString());
        customer1.setPaymentTime((new StringBuilder()).append(jsonobject4.getString("paymenttime")).toString());
        product.setCustomer(customer1);
        product.setFastel(jsonobject2.getString("fastel"));
        product.setSegmentasi(jsonobject2.getString("segmentasi"));
        return product;
        JSONObject jsonobject3 = jsonarray.getJSONObject(i);
        PstnDetailSummary pstndetailsummary = new PstnDetailSummary();
        pstndetailsummary.setTime(jsonobject3.getString("paymenttime"));
        pstndetailsummary.setDate(jsonobject3.getString("paymentdate"));
        pstndetailsummary.setDuedate(jsonobject3.getString("duedate"));
        pstndetailsummary.setLocation(jsonobject3.getString("paymentlocation"));
        pstndetailsummary.setStatus(jsonobject3.getString("status"));
        pstndetailsummary.setNamount(jsonobject3.getString("amount"));
        pstndetailsummary.setCurrency(jsonobject3.getString("curency"));
        pstndetailsummary.setInstallment(jsonobject3.getString("installment"));
        arraylist.add(pstndetailsummary);
        i++;
          goto _L4
        Exception exception1;
        exception1;
        Log.d(Constant.APP_TAG, exception1.getMessage());
        return null;
        Exception exception;
        exception;
_L5:
        Log.d(Constant.APP_TAG, exception.getMessage());
        return product;
        exception;
        product = product1;
        if (true) goto _L5; else goto _L2
_L2:
        return null;
    }

    public static final Product getSpeedyDetail(String s)
    {
        Product product = null;
        JSONObject jsonobject;
        boolean flag;
        jsonobject = new JSONObject(s);
        flag = jsonobject.getJSONObject("result").getString("statusCode").equals("00");
        product = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        JSONObject jsonobject1;
        Product product1;
        jsonobject1 = (new JSONObject(jsonobject.getJSONObject("result").getString("Result"))).getJSONObject("Speedy");
        product1 = new Product();
        product1.setPeriod(jsonobject1.getString("period"));
        product1.setCurency(jsonobject1.getString("curancy"));
        product1.setAmount(jsonobject1.getString("amount"));
        product1.setStatus(jsonobject1.getString("status"));
        product1.setCicilan(jsonobject1.getString("cicilan"));
        product1.setLocation(jsonobject1.getString("location"));
        product1.setPaymentdate(jsonobject1.getString("paymentdate"));
        product1.setPaytmenttime(jsonobject1.getString("paymenttime"));
        JSONObject jsonobject2 = jsonobject1.getJSONObject("customer");
        Customer customer1 = new Customer();
        customer1.setName(jsonobject2.getString("name"));
        customer1.setAddress(jsonobject2.getString("address"));
        customer1.setComercial(jsonobject2.getString("comercial"));
        customer1.setLocation(jsonobject2.getString("location"));
        customer1.setPaymentDate(jsonobject2.getString("paymentdate"));
        customer1.setPaymentTime(jsonobject2.getString("paymenttime"));
        product1.setCustomer(customer1);
        product1.setFastel(jsonobject1.getString("fastel"));
        product1.setSegmentasi(jsonobject1.getString("segmentasi"));
        product = product1;
        return product;
        Exception exception;
        exception;
_L2:
        Log.d(Constant.APP_TAG, exception.getMessage());
        return product;
        exception;
        product = product1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getAdminReg()
    {
        return adminReg;
    }

    public String getAmount()
    {
        return amount;
    }

    public String getCicilan()
    {
        return cicilan;
    }

    public String getCurency()
    {
        return curency;
    }

    public Customer getCustomer()
    {
        return customer;
    }

    public String getDate()
    {
        return date;
    }

    public String getEncryptedValidation()
    {
        return encryptedValidation;
    }

    public String getFastel()
    {
        return fastel;
    }

    public ArrayList getListPstnDetails()
    {
        return listPstnDetails;
    }

    public String getLocation()
    {
        return location;
    }

    public String getPaymentdate()
    {
        return paymentdate;
    }

    public String getPaytmenttime()
    {
        return paytmenttime;
    }

    public String getPeriod()
    {
        return period;
    }

    public String getProductDesc()
    {
        return productDesc;
    }

    public String getProductNo()
    {
        return productNo;
    }

    public String getProductPackage()
    {
        return productPackage;
    }

    public String getProductType()
    {
        return productType;
    }

    public String getRegDate()
    {
        return regDate;
    }

    public String getRelation()
    {
        return relation;
    }

    public String getSegmentasi()
    {
        return segmentasi;
    }

    public String getStatus()
    {
        return status;
    }

    public String getUid()
    {
        return uid;
    }

    public void setAdminReg(String s)
    {
        adminReg = s;
    }

    public void setAmount(String s)
    {
        amount = s;
    }

    public void setCicilan(String s)
    {
        cicilan = s;
    }

    public void setCurency(String s)
    {
        curency = s;
    }

    public void setCustomer(Customer customer1)
    {
        customer = customer1;
    }

    public void setDate(String s)
    {
        date = s;
    }

    public void setEncryptedValidation(String s)
    {
        encryptedValidation = s;
    }

    public void setFastel(String s)
    {
        fastel = s;
    }

    public void setListPstnDetails(ArrayList arraylist)
    {
        listPstnDetails = arraylist;
    }

    public void setLocation(String s)
    {
        location = s;
    }

    public void setPaymentdate(String s)
    {
        paymentdate = s;
    }

    public void setPaytmenttime(String s)
    {
        paytmenttime = s;
    }

    public void setPeriod(String s)
    {
        period = s;
    }

    public void setProductDesc(String s)
    {
        productDesc = s;
    }

    public void setProductNo(String s)
    {
        productNo = s;
    }

    public void setProductPackage(String s)
    {
        productPackage = s;
    }

    public void setProductType(String s)
    {
        productType = s;
    }

    public void setRegDate(String s)
    {
        regDate = s;
    }

    public void setRelation(String s)
    {
        relation = s;
    }

    public void setSegmentasi(String s)
    {
        segmentasi = s;
    }

    public void setStatus(String s)
    {
        status = s;
    }

    public void setUid(String s)
    {
        uid = s;
    }
}
