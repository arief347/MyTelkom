// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.loopj.android.http:
//            SimpleMultipartEntity, ResponseHandlerInterface

public class RequestParams
{
    private static class FileWrapper
    {

        public String contentType;
        public File file;

        public FileWrapper(File file1, String s)
        {
            file = file1;
            contentType = s;
        }
    }

    private static class StreamWrapper
    {

        public String contentType;
        public InputStream inputStream;
        public String name;

        public StreamWrapper(InputStream inputstream, String s, String s1)
        {
            inputStream = inputstream;
            name = s;
            contentType = s1;
        }
    }


    protected ConcurrentHashMap fileParams;
    protected boolean isRepeatable;
    protected ConcurrentHashMap streamParams;
    protected ConcurrentHashMap urlParams;
    protected ConcurrentHashMap urlParamsWithObjects;

    public RequestParams()
    {
        this((Map)null);
    }

    public RequestParams(final String key, final String value)
    {
        this(((Map) (new HashMap() {

            final String val$key;
            final String val$value;

            
            {
                key = s;
                value = s1;
                super();
                put(key, value);
            }
        })));
    }

    public RequestParams(Map map)
    {
        isRepeatable = false;
        init();
        if (map != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); put((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
    }

    public transient RequestParams(Object aobj[])
    {
        isRepeatable = false;
        init();
        int i = aobj.length;
        if (i % 2 != 0)
        {
            throw new IllegalArgumentException("Supplied arguments must be even");
        }
        for (int j = 0; j < i; j += 2)
        {
            put(String.valueOf(aobj[j]), String.valueOf(aobj[j + 1]));
        }

    }

    private HttpEntity createFormEntity()
    {
        UrlEncodedFormEntity urlencodedformentity;
        try
        {
            urlencodedformentity = new UrlEncodedFormEntity(getParamsList(), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return null;
        }
        return urlencodedformentity;
    }

    private HttpEntity createMultipartEntity(ResponseHandlerInterface responsehandlerinterface)
        throws IOException
    {
        SimpleMultipartEntity simplemultipartentity = new SimpleMultipartEntity(responsehandlerinterface);
        simplemultipartentity.setIsRepeatable(isRepeatable);
        java.util.Map.Entry entry2;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); simplemultipartentity.addPart((String)entry2.getKey(), (String)entry2.getValue()))
        {
            entry2 = (java.util.Map.Entry)iterator.next();
        }

        BasicNameValuePair basicnamevaluepair;
        for (Iterator iterator1 = getParamsList(null, urlParamsWithObjects).iterator(); iterator1.hasNext(); simplemultipartentity.addPart(basicnamevaluepair.getName(), basicnamevaluepair.getValue()))
        {
            basicnamevaluepair = (BasicNameValuePair)iterator1.next();
        }

        Iterator iterator2 = streamParams.entrySet().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator2.next();
            StreamWrapper streamwrapper = (StreamWrapper)entry1.getValue();
            if (streamwrapper.inputStream != null)
            {
                simplemultipartentity.addPart((String)entry1.getKey(), streamwrapper.name, streamwrapper.inputStream, streamwrapper.contentType);
            }
        } while (true);
        java.util.Map.Entry entry;
        FileWrapper filewrapper;
        for (Iterator iterator3 = fileParams.entrySet().iterator(); iterator3.hasNext(); simplemultipartentity.addPart((String)entry.getKey(), filewrapper.file, filewrapper.contentType))
        {
            entry = (java.util.Map.Entry)iterator3.next();
            filewrapper = (FileWrapper)entry.getValue();
        }

        return simplemultipartentity;
    }

    private List getParamsList(String s, Object obj)
    {
        LinkedList linkedlist = new LinkedList();
        if (obj instanceof Map)
        {
            Map map = (Map)obj;
            ArrayList arraylist = new ArrayList(map.keySet());
            Collections.sort(arraylist);
            Iterator iterator2 = arraylist.iterator();
            do
            {
                if (!iterator2.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator2.next();
                Object obj3 = map.get(s1);
                if (obj3 != null)
                {
                    if (s != null)
                    {
                        s1 = String.format("%s[%s]", new Object[] {
                            s, s1
                        });
                    }
                    linkedlist.addAll(getParamsList(s1, obj3));
                }
            } while (true);
        } else
        if (obj instanceof List)
        {
            Object obj2;
            for (Iterator iterator1 = ((List)obj).iterator(); iterator1.hasNext(); linkedlist.addAll(getParamsList(String.format("%s[]", new Object[] {
    s
}), obj2)))
            {
                obj2 = iterator1.next();
            }

        } else
        if (obj instanceof Object[])
        {
            Object aobj[] = (Object[])(Object[])obj;
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                Object obj1 = aobj[j];
                linkedlist.addAll(getParamsList(String.format("%s[]", new Object[] {
                    s
                }), obj1));
            }

        } else
        if (obj instanceof Set)
        {
            for (Iterator iterator = ((Set)obj).iterator(); iterator.hasNext(); linkedlist.addAll(getParamsList(s, iterator.next()))) { }
        } else
        if (obj instanceof String)
        {
            linkedlist.add(new BasicNameValuePair(s, (String)obj));
        }
        return linkedlist;
    }

    private void init()
    {
        urlParams = new ConcurrentHashMap();
        streamParams = new ConcurrentHashMap();
        fileParams = new ConcurrentHashMap();
        urlParamsWithObjects = new ConcurrentHashMap();
    }

    public void add(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            Object obj = urlParamsWithObjects.get(s);
            if (obj == null)
            {
                obj = new HashSet();
                put(s, obj);
            }
            if (obj instanceof List)
            {
                ((List)obj).add(s1);
            } else
            if (obj instanceof Set)
            {
                ((Set)obj).add(s1);
                return;
            }
        }
    }

    public HttpEntity getEntity(ResponseHandlerInterface responsehandlerinterface)
        throws IOException
    {
        if (streamParams.isEmpty() && fileParams.isEmpty())
        {
            return createFormEntity();
        } else
        {
            return createMultipartEntity(responsehandlerinterface);
        }
    }

    protected String getParamString()
    {
        return URLEncodedUtils.format(getParamsList(), "UTF-8");
    }

    protected List getParamsList()
    {
        LinkedList linkedlist = new LinkedList();
        java.util.Map.Entry entry;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); linkedlist.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        linkedlist.addAll(getParamsList(null, urlParamsWithObjects));
        return linkedlist;
    }

    public void put(String s, File file)
        throws FileNotFoundException
    {
        put(s, file, null);
    }

    public void put(String s, File file, String s1)
        throws FileNotFoundException
    {
        if (s != null && file != null)
        {
            fileParams.put(s, new FileWrapper(file, s1));
        }
    }

    public void put(String s, InputStream inputstream)
    {
        put(s, inputstream, null);
    }

    public void put(String s, InputStream inputstream, String s1)
    {
        put(s, inputstream, s1, null);
    }

    public void put(String s, InputStream inputstream, String s1, String s2)
    {
        if (s != null && inputstream != null)
        {
            streamParams.put(s, new StreamWrapper(inputstream, s1, s2));
        }
    }

    public void put(String s, Object obj)
    {
        if (s != null && obj != null)
        {
            urlParamsWithObjects.put(s, obj);
        }
    }

    public void put(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            urlParams.put(s, s1);
        }
    }

    public void remove(String s)
    {
        urlParams.remove(s);
        streamParams.remove(s);
        fileParams.remove(s);
        urlParamsWithObjects.remove(s);
    }

    public void setHttpEntityIsRepeatable(boolean flag)
    {
        isRepeatable = flag;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        java.util.Map.Entry entry2;
        for (Iterator iterator = urlParams.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((String)entry2.getValue()))
        {
            entry2 = (java.util.Map.Entry)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry2.getKey());
            stringbuilder.append("=");
        }

        for (Iterator iterator1 = streamParams.entrySet().iterator(); iterator1.hasNext(); stringbuilder.append("STREAM"))
        {
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator1.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry1.getKey());
            stringbuilder.append("=");
        }

        for (Iterator iterator2 = fileParams.entrySet().iterator(); iterator2.hasNext(); stringbuilder.append("FILE"))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator2.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((String)entry.getKey());
            stringbuilder.append("=");
        }

        BasicNameValuePair basicnamevaluepair;
        for (Iterator iterator3 = getParamsList(null, urlParamsWithObjects).iterator(); iterator3.hasNext(); stringbuilder.append(basicnamevaluepair.getValue()))
        {
            basicnamevaluepair = (BasicNameValuePair)iterator3.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(basicnamevaluepair.getName());
            stringbuilder.append("=");
        }

        return stringbuilder.toString();
    }
}
