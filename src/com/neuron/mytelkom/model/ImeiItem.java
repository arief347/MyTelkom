// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import com.neuron.mytelkom.utils.Utils;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class ImeiItem
    implements Serializable
{

    private static final long serialVersionUID = 0xa9730062fdd35a6bL;
    String adminreg;
    String encryptedValidation;
    String productDesc;
    String productNo;
    String productPackage;
    String productType;
    String regdate;
    String relation;
    String status;
    String uid;

    public ImeiItem()
    {
    }

    public static ArrayList getListImeItem(String s)
    {
        ArrayList arraylist = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getJSONObject("result").getString("statusCode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = (new JSONObject(jsonobject.getJSONObject("result").getString("Result"))).getJSONArray("IME");
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
        ImeiItem imeiitem = new ImeiItem();
        imeiitem.setProductNo(jsonobject1.getString("product_no"));
        imeiitem.setProductType(jsonobject1.getString("product_type"));
        imeiitem.setProductPackage(jsonobject1.getString("product_package"));
        imeiitem.setUid(jsonobject1.getString("uid"));
        imeiitem.setStatus(jsonobject1.getString("status"));
        imeiitem.setRelation(jsonobject1.getString("relation"));
        imeiitem.setRegdate(jsonobject1.getString("regdate"));
        imeiitem.setAdminreg(jsonobject1.getString("adminreg"));
        imeiitem.setEncryptedValidation(jsonobject1.getString("adminreg"));
        imeiitem.setProductDesc(jsonobject1.getString("product_desc"));
        arraylist1.add(imeiitem);
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

    public String getAdminreg()
    {
        return adminreg;
    }

    public String getEncryptedValidation()
    {
        return encryptedValidation;
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

    public String getRegdate()
    {
        return regdate;
    }

    public String getRelation()
    {
        return relation;
    }

    public String getStatus()
    {
        return status;
    }

    public String getUid()
    {
        return uid;
    }

    public void setAdminreg(String s)
    {
        adminreg = s;
    }

    public void setEncryptedValidation(String s)
    {
        encryptedValidation = s;
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

    public void setRegdate(String s)
    {
        regdate = s;
    }

    public void setRelation(String s)
    {
        relation = s;
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
