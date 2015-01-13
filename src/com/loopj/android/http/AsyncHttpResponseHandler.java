// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.loopj.android.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.util.ByteArrayBuffer;

// Referenced classes of package com.loopj.android.http:
//            ResponseHandlerInterface

public class AsyncHttpResponseHandler
    implements ResponseHandlerInterface
{
    static class ResponderHandler extends Handler
    {

        private final WeakReference mResponder;

        public void handleMessage(Message message)
        {
            AsyncHttpResponseHandler asynchttpresponsehandler = (AsyncHttpResponseHandler)mResponder.get();
            if (asynchttpresponsehandler != null)
            {
                asynchttpresponsehandler.handleMessage(message);
            }
        }

        ResponderHandler(AsyncHttpResponseHandler asynchttpresponsehandler)
        {
            mResponder = new WeakReference(asynchttpresponsehandler);
        }
    }


    protected static final int BUFFER_SIZE = 4096;
    public static final String DEFAULT_CHARSET = "UTF-8";
    protected static final int FAILURE_MESSAGE = 1;
    protected static final int FINISH_MESSAGE = 3;
    private static final String LOG_TAG = "AsyncHttpResponseHandler";
    protected static final int PROGRESS_MESSAGE = 4;
    protected static final int RETRY_MESSAGE = 5;
    protected static final int START_MESSAGE = 2;
    protected static final int SUCCESS_MESSAGE;
    private Handler handler;
    private Header requestHeaders[];
    private URI requestURI;
    private String responseCharset;
    private Boolean useSynchronousMode;

    public AsyncHttpResponseHandler()
    {
        responseCharset = "UTF-8";
        useSynchronousMode = Boolean.valueOf(false);
        requestURI = null;
        requestHeaders = null;
        if (Looper.myLooper() != null)
        {
            handler = new ResponderHandler(this);
        }
    }

    public String getCharset()
    {
        if (responseCharset == null)
        {
            return "UTF-8";
        } else
        {
            return responseCharset;
        }
    }

    public Header[] getRequestHeaders()
    {
        return requestHeaders;
    }

    public URI getRequestURI()
    {
        return requestURI;
    }

    byte[] getResponseData(HttpEntity httpentity)
        throws IOException
    {
        byte abyte0[];
        InputStream inputstream;
        long l;
        abyte0 = null;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        inputstream = httpentity.getContent();
        abyte0 = null;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        l = httpentity.getContentLength();
        if (l > 0x7fffffffL)
        {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        if (l < 0L)
        {
            l = 4096L;
        }
        ByteArrayBuffer bytearraybuffer = new ByteArrayBuffer((int)l);
        byte abyte1[] = new byte[4096];
        int i = 0;
_L1:
        int j = inputstream.read(abyte1);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        if (Thread.currentThread().isInterrupted())
        {
            break MISSING_BLOCK_LABEL_156;
        }
        i += j;
        bytearraybuffer.append(abyte1, 0, j);
        sendProgressMessage(i, (int)l);
          goto _L1
        Exception exception;
        exception;
        try
        {
            inputstream.close();
            throw exception;
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            System.gc();
        }
        throw new IOException("File too large to fit into available memory");
        byte abyte2[];
        inputstream.close();
        abyte2 = bytearraybuffer.toByteArray();
        abyte0 = abyte2;
        return abyte0;
    }

    public boolean getUseSynchronousMode()
    {
        return useSynchronousMode.booleanValue();
    }

    protected void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            Object aobj2[] = (Object[])(Object[])message.obj;
            if (aobj2 != null && aobj2.length >= 3)
            {
                onSuccess(((Integer)aobj2[0]).intValue(), (Header[])(Header[])aobj2[1], (byte[])(byte[])aobj2[2]);
                return;
            } else
            {
                Log.e("AsyncHttpResponseHandler", "SUCCESS_MESSAGE didn't got enough params");
                return;
            }

        case 1: // '\001'
            Object aobj1[] = (Object[])(Object[])message.obj;
            if (aobj1 != null && aobj1.length >= 4)
            {
                onFailure(((Integer)aobj1[0]).intValue(), (Header[])(Header[])aobj1[1], (byte[])(byte[])aobj1[2], (Throwable)aobj1[3]);
                return;
            } else
            {
                Log.e("AsyncHttpResponseHandler", "FAILURE_MESSAGE didn't got enough params");
                return;
            }

        case 2: // '\002'
            onStart();
            return;

        case 3: // '\003'
            onFinish();
            return;

        case 4: // '\004'
            Object aobj[] = (Object[])(Object[])message.obj;
            if (aobj != null && aobj.length >= 2)
            {
                try
                {
                    onProgress(((Integer)aobj[0]).intValue(), ((Integer)aobj[1]).intValue());
                    return;
                }
                catch (Throwable throwable)
                {
                    Log.e("AsyncHttpResponseHandler", "custom onProgress contains an error", throwable);
                }
                return;
            } else
            {
                Log.e("AsyncHttpResponseHandler", "PROGRESS_MESSAGE didn't got enough params");
                return;
            }

        case 5: // '\005'
            onRetry();
            return;
        }
    }

    protected Message obtainMessage(int i, Object obj)
    {
        Message message;
        if (handler != null)
        {
            message = handler.obtainMessage(i, obj);
        } else
        {
            message = Message.obtain();
            if (message != null)
            {
                message.what = i;
                message.obj = obj;
                return message;
            }
        }
        return message;
    }

    public void onFailure(int i, Throwable throwable, String s)
    {
        onFailure(throwable, s);
    }

    public void onFailure(int i, Header aheader[], Throwable throwable, String s)
    {
        onFailure(i, throwable, s);
    }

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        String s;
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        s = null;
_L1:
        try
        {
            onFailure(i, aheader, throwable, s);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("AsyncHttpResponseHandler", unsupportedencodingexception.toString());
            onFailure(i, aheader, ((Throwable) (unsupportedencodingexception)), ((String) (null)));
            return;
        }
        s = new String(abyte0, getCharset());
          goto _L1
    }

    public void onFailure(Throwable throwable)
    {
    }

    public void onFailure(Throwable throwable, String s)
    {
        onFailure(throwable);
    }

    public void onFinish()
    {
    }

    public void onProgress(int i, int j)
    {
    }

    public void onRetry()
    {
    }

    public void onStart()
    {
    }

    public void onSuccess(int i, String s)
    {
        onSuccess(s);
    }

    public void onSuccess(int i, Header aheader[], String s)
    {
        onSuccess(i, s);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        String s;
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        s = null;
_L1:
        try
        {
            onSuccess(i, aheader, s);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("AsyncHttpResponseHandler", unsupportedencodingexception.toString());
            onFailure(i, aheader, unsupportedencodingexception, ((String) (null)));
            return;
        }
        s = new String(abyte0, getCharset());
          goto _L1
    }

    public void onSuccess(String s)
    {
    }

    protected void postRunnable(Runnable runnable)
    {
        if (runnable != null)
        {
            handler.post(runnable);
        }
    }

    public final void sendFailureMessage(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = aheader;
        aobj[2] = abyte0;
        aobj[3] = throwable;
        sendMessage(obtainMessage(1, ((Object) (aobj))));
    }

    public final void sendFinishMessage()
    {
        sendMessage(obtainMessage(3, null));
    }

    protected void sendMessage(Message message)
    {
        if (getUseSynchronousMode() || handler == null)
        {
            handleMessage(message);
        } else
        if (!Thread.currentThread().isInterrupted())
        {
            handler.sendMessage(message);
            return;
        }
    }

    public final void sendProgressMessage(int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        sendMessage(obtainMessage(4, ((Object) (aobj))));
    }

    public void sendResponseMessage(HttpResponse httpresponse)
        throws IOException
    {
        StatusLine statusline;
        byte abyte0[];
label0:
        {
            if (!Thread.currentThread().isInterrupted())
            {
                statusline = httpresponse.getStatusLine();
                abyte0 = getResponseData(httpresponse.getEntity());
                if (!Thread.currentThread().isInterrupted())
                {
                    if (statusline.getStatusCode() < 300)
                    {
                        break label0;
                    }
                    sendFailureMessage(statusline.getStatusCode(), httpresponse.getAllHeaders(), abyte0, new HttpResponseException(statusline.getStatusCode(), statusline.getReasonPhrase()));
                }
            }
            return;
        }
        sendSuccessMessage(statusline.getStatusCode(), httpresponse.getAllHeaders(), abyte0);
    }

    public final void sendRetryMessage()
    {
        sendMessage(obtainMessage(5, null));
    }

    public final void sendStartMessage()
    {
        sendMessage(obtainMessage(2, null));
    }

    public final void sendSuccessMessage(int i, Header aheader[], byte abyte0[])
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = aheader;
        aobj[2] = abyte0;
        sendMessage(obtainMessage(0, ((Object) (aobj))));
    }

    public void setCharset(String s)
    {
        responseCharset = s;
    }

    public void setRequestHeaders(Header aheader[])
    {
        requestHeaders = aheader;
    }

    public void setRequestURI(URI uri)
    {
        requestURI = uri;
    }

    public void setUseSynchronousMode(boolean flag)
    {
        useSynchronousMode = Boolean.valueOf(flag);
    }
}
