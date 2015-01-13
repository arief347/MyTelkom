// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.model;

import com.neuron.mytelkom.utils.Utils;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.model:
//            ConferenceKey, ConferencePassword, ConferenceAttendees

public class ConferenceItem
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    String KinescopeState;
    String accessNumber;
    String autoProlong;
    String autoProlongTime;
    String calleeNeedPassword;
    String chargeMode;
    String conferenceDay;
    String conferenceHour;
    ConferenceKey conferenceKey;
    String conferenceMode;
    String conferenceState;
    String conferenceTime;
    String convergent;
    String dHours;
    String dMinutes;
    String duration;
    String durationText;
    String id;
    String isAllowInvite;
    String isAllowKinescope;
    String isAllowRecord;
    String isAllowVideoControl;
    String isAutoInvite;
    String isCycleType;
    String language;
    String length;
    ArrayList listAttendees;
    ArrayList listPasswords;
    String lockState;
    int maxAttendee;
    String mediaTypes;
    String needParticipatorLimit;
    String recordState;
    String schedusedName;
    String scheduserMobile;
    String size;
    String startTime;
    String startTimeInMilis;
    String subject;
    String summerTime;
    String timezone;
    String typeConf;
    String voiceRecordState;
    String voiceTopicState;

    public ConferenceItem()
    {
    }

    public static ConferenceItem getDetailConferenceItem(String s)
    {
        ConferenceItem conferenceitem = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (!jsonobject.getString("Result").equals("null") && jsonobject1 == null) goto _L2; else goto _L3
_L3:
        JSONObject jsonobject2;
        ConferenceItem conferenceitem1;
        jsonobject2 = (new JSONObject(jsonobject1.getString("Result"))).getJSONObject("conferenceInfo");
        conferenceitem1 = new ConferenceItem();
        JSONArray jsonarray;
        conferenceitem1.setStartTime(jsonobject2.getString("startTime"));
        conferenceitem1.setTimezone(jsonobject2.getString("timeZone"));
        conferenceitem1.setLength(jsonobject2.getString("length"));
        conferenceitem1.setSize(jsonobject2.getString("size"));
        conferenceitem1.setSubject(jsonobject2.getString("subject"));
        conferenceitem1.setMediaTypes(jsonobject2.getString("mediaTypes"));
        conferenceitem1.setIsAllowVideoControl(jsonobject2.getString("isAllowVideoControl"));
        conferenceitem1.setChargeMode(jsonobject2.getString("chargeMode"));
        conferenceitem1.setConferenceMode(jsonobject2.getString("conferenceMode"));
        conferenceitem1.setSchedusedName(jsonobject2.getString("scheduserName"));
        conferenceitem1.setScheduserMobile(jsonobject2.getString("scheduserMobile"));
        conferenceitem1.setConferenceState(jsonobject2.getString("conferenceState"));
        conferenceitem1.setCalleeNeedPassword(jsonobject2.getString("calleeNeedPassword"));
        conferenceitem1.setNeedParticipatorLimit(jsonobject2.getString("needParticipatorLimit"));
        conferenceitem1.setIsAllowRecord(jsonobject2.getString("isAllowRecord"));
        conferenceitem1.setRecordState(jsonobject2.getString("recordState"));
        conferenceitem1.setIsAllowKinescope(jsonobject2.getString("isAllowKinescope"));
        conferenceitem1.setKinescopeState(jsonobject2.getString("KinescopeState"));
        conferenceitem1.setLockState(jsonobject2.getString("lockState"));
        conferenceitem1.setLanguage(jsonobject2.getString("language"));
        conferenceitem1.setSummerTime(jsonobject2.getString("summerTime"));
        conferenceitem1.setIsAllowInvite(jsonobject2.getString("isAllowInvite"));
        conferenceitem1.setIsAutoInvite(jsonobject2.getString("isAutoInvite"));
        conferenceitem1.setIsCycleType(jsonobject2.getString("isCycleType"));
        conferenceitem1.setVoiceTopicState(jsonobject2.getString("voiceTopicState"));
        conferenceitem1.setVoiceRecordState(jsonobject2.getString("voiceRecordState"));
        conferenceitem1.setAccessNumber(jsonobject2.getString("accessNumber"));
        conferenceitem1.setAutoProlong(jsonobject2.getString("autoProlong"));
        conferenceitem1.setAutoProlongTime(jsonobject2.getString("autoProlongTime"));
        conferenceitem1.setConvergent(jsonobject2.getString("convergent"));
        conferenceitem1.setConferenceTime(jsonobject2.getString("conferenceTime"));
        conferenceitem1.setConferenceHour(jsonobject2.getString("conferenceHour"));
        conferenceitem1.setConferenceDay(jsonobject2.getString("conferenceDay"));
        conferenceitem1.setDuration(jsonobject2.getString("duration"));
        conferenceitem1.setDurationText(jsonobject2.getString("durationText"));
        jsonarray = jsonobject2.getJSONArray("passwords");
        if (jsonarray.length() <= 0) goto _L5; else goto _L4
_L4:
        ArrayList arraylist = new ArrayList();
        int i = 0;
_L16:
        if (i < jsonarray.length()) goto _L7; else goto _L6
_L6:
        conferenceitem1.setListPasswords(arraylist);
_L5:
        JSONArray jsonarray1;
        JSONObject jsonobject4 = jsonobject2.getJSONObject("conferenceKey");
        ConferenceKey conferencekey = new ConferenceKey();
        conferencekey.setConferenceId(jsonobject4.getString("conferenceID"));
        conferencekey.setSubConferenceId(jsonobject4.getString("subConferenceID"));
        conferenceitem1.setConferenceKey(conferencekey);
        jsonarray1 = jsonobject2.getJSONArray("attendees");
        if (jsonarray1.length() <= 0) goto _L9; else goto _L8
_L8:
        ArrayList arraylist1;
        arraylist1 = new ArrayList();
        if (arraylist1.size() > 0)
        {
            arraylist1.clear();
        }
          goto _L10
_L14:
        int j;
        if (j < jsonarray1.length()) goto _L12; else goto _L11
_L11:
        conferenceitem1.setListAttendees(arraylist1);
        return conferenceitem1;
_L7:
        JSONObject jsonobject3 = jsonarray.getJSONObject(i);
        ConferencePassword conferencepassword = new ConferencePassword();
        conferencepassword.setConferenceRole(jsonobject3.getString("conferenceRole"));
        conferencepassword.setPassword(jsonobject3.getString("password"));
        conferencepassword.setAutoMake(jsonobject3.getString("autoMake"));
        arraylist.add(conferencepassword);
        i++;
        continue; /* Loop/switch isn't completed */
_L12:
        JSONObject jsonobject5 = jsonarray1.getJSONObject(j);
        ConferenceAttendees conferenceattendees = new ConferenceAttendees();
        conferenceattendees.setName(jsonobject5.getString("attendeeName"));
        conferenceattendees.setEmail(jsonobject5.getJSONArray("addressEntry").getJSONObject(0).getString("address"));
        conferenceattendees.setPhone(jsonobject5.getJSONArray("addressEntry").getJSONObject(1).getString("address"));
        conferenceattendees.setRegionId(jsonobject5.getString("conferenceRole"));
        conferenceattendees.setRole(jsonobject5.getString("conferenceRole"));
        conferenceattendees.setType(jsonobject5.getString("type"));
        arraylist1.add(conferenceattendees);
        j++;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
_L13:
        Utils.printLog(exception.getMessage());
        return conferenceitem;
        exception;
        conferenceitem = conferenceitem1;
        if (true) goto _L13; else goto _L9
_L9:
        return conferenceitem1;
_L10:
        j = 0;
        if (true) goto _L14; else goto _L2
_L2:
        return null;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public static ArrayList getListConference(String s)
    {
        ArrayList arraylist = null;
        JSONObject jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (jsonobject.getString("Result").equals("null") && jsonobject1 == null) goto _L2; else goto _L3
_L3:
        ArrayList arraylist1 = new ArrayList();
        JSONArray jsonarray = new JSONArray(jsonobject1.getString("Result"));
        int i = 0;
_L5:
        if (i >= jsonarray.length())
        {
            return arraylist1;
        }
        ConferenceItem conferenceitem = new ConferenceItem();
        JSONObject jsonobject2 = jsonarray.getJSONObject(i);
        conferenceitem.setConferenceState(jsonobject2.getString("conferenceState"));
        conferenceitem.setId(jsonobject2.getString("conferenceID"));
        conferenceitem.setSchedusedName(jsonobject2.getString("scheduserName"));
        conferenceitem.setStartTime(jsonobject2.getString("startTime"));
        conferenceitem.setSubject(jsonobject2.getString("subject"));
        arraylist1.add(conferenceitem);
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

    public String getAccessNumber()
    {
        return accessNumber;
    }

    public String getAutoProlong()
    {
        return autoProlong;
    }

    public String getAutoProlongTime()
    {
        return autoProlongTime;
    }

    public String getCalleeNeedPassword()
    {
        return calleeNeedPassword;
    }

    public String getChargeMode()
    {
        return chargeMode;
    }

    public String getConferenceDay()
    {
        return conferenceDay;
    }

    public String getConferenceHour()
    {
        return conferenceHour;
    }

    public ConferenceKey getConferenceKey()
    {
        return conferenceKey;
    }

    public String getConferenceMode()
    {
        return conferenceMode;
    }

    public String getConferenceState()
    {
        return conferenceState;
    }

    public String getConferenceTime()
    {
        return conferenceTime;
    }

    public String getConvergent()
    {
        return convergent;
    }

    public String getDuration()
    {
        return duration;
    }

    public String getDurationText()
    {
        return durationText;
    }

    public String getId()
    {
        return id;
    }

    public String getIsAllowInvite()
    {
        return isAllowInvite;
    }

    public String getIsAllowKinescope()
    {
        return isAllowKinescope;
    }

    public String getIsAllowRecord()
    {
        return isAllowRecord;
    }

    public String getIsAllowVideoControl()
    {
        return isAllowVideoControl;
    }

    public String getIsAutoInvite()
    {
        return isAutoInvite;
    }

    public String getIsCycleType()
    {
        return isCycleType;
    }

    public String getKinescopeState()
    {
        return KinescopeState;
    }

    public String getLanguage()
    {
        return language;
    }

    public String getLength()
    {
        return length;
    }

    public ArrayList getListAttendees()
    {
        return listAttendees;
    }

    public ArrayList getListPasswords()
    {
        return listPasswords;
    }

    public String getLockState()
    {
        return lockState;
    }

    public int getMaxAttendee()
    {
        return maxAttendee;
    }

    public String getMediaTypes()
    {
        return mediaTypes;
    }

    public String getNeedParticipatorLimit()
    {
        return needParticipatorLimit;
    }

    public String getRecordState()
    {
        return recordState;
    }

    public String getSchedusedName()
    {
        return schedusedName;
    }

    public String getScheduserMobile()
    {
        return scheduserMobile;
    }

    public String getSize()
    {
        return size;
    }

    public String getStartTime()
    {
        return startTime;
    }

    public String getStartTimeInMilis()
    {
        return startTimeInMilis;
    }

    public String getSubject()
    {
        return subject;
    }

    public String getSummerTime()
    {
        return summerTime;
    }

    public String getTimezone()
    {
        return timezone;
    }

    public String getTypeConf()
    {
        return typeConf;
    }

    public String getVoiceRecordState()
    {
        return voiceRecordState;
    }

    public String getVoiceTopicState()
    {
        return voiceTopicState;
    }

    public String getdHours()
    {
        return dHours;
    }

    public String getdMinutes()
    {
        return dMinutes;
    }

    public void setAccessNumber(String s)
    {
        accessNumber = s;
    }

    public void setAutoProlong(String s)
    {
        autoProlong = s;
    }

    public void setAutoProlongTime(String s)
    {
        autoProlongTime = s;
    }

    public void setCalleeNeedPassword(String s)
    {
        calleeNeedPassword = s;
    }

    public void setChargeMode(String s)
    {
        chargeMode = s;
    }

    public void setConferenceDay(String s)
    {
        conferenceDay = s;
    }

    public void setConferenceHour(String s)
    {
        conferenceHour = s;
    }

    public void setConferenceKey(ConferenceKey conferencekey)
    {
        conferenceKey = conferencekey;
    }

    public void setConferenceMode(String s)
    {
        conferenceMode = s;
    }

    public void setConferenceState(String s)
    {
        conferenceState = s;
    }

    public void setConferenceTime(String s)
    {
        conferenceTime = s;
    }

    public void setConvergent(String s)
    {
        convergent = s;
    }

    public void setDuration(String s)
    {
        duration = s;
    }

    public void setDurationText(String s)
    {
        durationText = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setIsAllowInvite(String s)
    {
        isAllowInvite = s;
    }

    public void setIsAllowKinescope(String s)
    {
        isAllowKinescope = s;
    }

    public void setIsAllowRecord(String s)
    {
        isAllowRecord = s;
    }

    public void setIsAllowVideoControl(String s)
    {
        isAllowVideoControl = s;
    }

    public void setIsAutoInvite(String s)
    {
        isAutoInvite = s;
    }

    public void setIsCycleType(String s)
    {
        isCycleType = s;
    }

    public void setKinescopeState(String s)
    {
        KinescopeState = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setLength(String s)
    {
        length = s;
    }

    public void setListAttendees(ArrayList arraylist)
    {
        listAttendees = arraylist;
    }

    public void setListPasswords(ArrayList arraylist)
    {
        listPasswords = arraylist;
    }

    public void setLockState(String s)
    {
        lockState = s;
    }

    public void setMaxAttendee(int i)
    {
        maxAttendee = i;
    }

    public void setMediaTypes(String s)
    {
        mediaTypes = s;
    }

    public void setNeedParticipatorLimit(String s)
    {
        needParticipatorLimit = s;
    }

    public void setRecordState(String s)
    {
        recordState = s;
    }

    public void setSchedusedName(String s)
    {
        schedusedName = s;
    }

    public void setScheduserMobile(String s)
    {
        scheduserMobile = s;
    }

    public void setSize(String s)
    {
        size = s;
    }

    public void setStartTime(String s)
    {
        startTime = s;
    }

    public void setStartTimeInMilis(String s)
    {
        startTimeInMilis = s;
    }

    public void setSubject(String s)
    {
        subject = s;
    }

    public void setSummerTime(String s)
    {
        summerTime = s;
    }

    public void setTimezone(String s)
    {
        timezone = s;
    }

    public void setTypeConf(String s)
    {
        typeConf = s;
    }

    public void setVoiceRecordState(String s)
    {
        voiceRecordState = s;
    }

    public void setVoiceTopicState(String s)
    {
        voiceTopicState = s;
    }

    public void setdHours(String s)
    {
        dHours = s;
    }

    public void setdMinutes(String s)
    {
        dMinutes = s;
    }
}
