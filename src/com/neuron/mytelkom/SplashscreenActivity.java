// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            MainActivity, LoginActivity

public class SplashscreenActivity extends BaseActivity
{
    class Delay extends AsyncTask
    {

        final SplashscreenActivity this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient Void doInBackground(Void avoid[])
        {
            try
            {
                Thread.sleep(5000L);
            }
            catch (Exception exception) { }
            return null;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Void)obj);
        }

        protected void onPostExecute(Void void1)
        {
            super.onPostExecute(void1);
            route();
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
        }

        Delay()
        {
            this$0 = SplashscreenActivity.this;
            super();
        }
    }


    public SplashscreenActivity()
    {
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setTitle("Download Data");
        dialog.setMessage("Please wait...");
        dialog.show();
        try
        {
            asyncHttpClient.get("https://my.telkom.co.id/api/MTcitymapping.php?api=", new AsyncHttpResponseHandler() {

                final SplashscreenActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    try
                    {
                        JSONObject jsonobject = new JSONObject(new String(abyte0));
                        if (jsonobject.getString("code").equals("00"))
                        {
                            String s = jsonobject.getString("result");
                            preference.setCity(s);
                            route();
                        }
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Utils.printLog(exception1.getMessage());
                    }
                }

            
            {
                this$0 = SplashscreenActivity.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030014);
        if (preference.getCity().equals(""))
        {
            initializeRequest();
            return;
        } else
        {
            (new Delay()).execute(new Void[0]);
            return;
        }
    }

    public void route()
    {
        if (!preference.getUsername().equals(""))
        {
            MainActivity.toMainActivity(this);
            finish();
            return;
        } else
        {
            LoginActivity.toLoginActivity(this);
            finish();
            return;
        }
    }
}
