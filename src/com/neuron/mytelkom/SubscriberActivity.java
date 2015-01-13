// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.adapter.SubscriberAdapter;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.ConferenceItem;
import com.neuron.mytelkom.model.ConferenceKey;
import com.neuron.mytelkom.model.ConferencePassword;
import com.neuron.mytelkom.model.Subscriber;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.Header;
import org.json.JSONObject;

public class SubscriberActivity extends BaseActivity
{
    public static final class SubscriberAction extends Enum
    {

        private static final SubscriberAction ENUM$VALUES[];
        public static final SubscriberAction KICK;
        public static final SubscriberAction MIC_OFF;
        public static final SubscriberAction MIC_ON;
        public static final SubscriberAction SPEAKER_OFF;
        public static final SubscriberAction SPEAKER_ON;

        public static SubscriberAction valueOf(String s)
        {
            return (SubscriberAction)Enum.valueOf(com/neuron/mytelkom/SubscriberActivity$SubscriberAction, s);
        }

        public static SubscriberAction[] values()
        {
            SubscriberAction asubscriberaction[] = ENUM$VALUES;
            int i = asubscriberaction.length;
            SubscriberAction asubscriberaction1[] = new SubscriberAction[i];
            System.arraycopy(asubscriberaction, 0, asubscriberaction1, 0, i);
            return asubscriberaction1;
        }

        static 
        {
            MIC_ON = new SubscriberAction("MIC_ON", 0);
            MIC_OFF = new SubscriberAction("MIC_OFF", 1);
            SPEAKER_ON = new SubscriberAction("SPEAKER_ON", 2);
            SPEAKER_OFF = new SubscriberAction("SPEAKER_OFF", 3);
            KICK = new SubscriberAction("KICK", 4);
            SubscriberAction asubscriberaction[] = new SubscriberAction[5];
            asubscriberaction[0] = MIC_ON;
            asubscriberaction[1] = MIC_OFF;
            asubscriberaction[2] = SPEAKER_ON;
            asubscriberaction[3] = SPEAKER_OFF;
            asubscriberaction[4] = KICK;
            ENUM$VALUES = asubscriberaction;
        }

        private SubscriberAction(String s, int i)
        {
            super(s, i);
        }
    }


    public static String KEY_CONFERENCE_ITEM = "item";
    private ProgressBar indicator;
    private ConferenceItem item;
    private ArrayList listSubscriber;
    private ListView lvSubscriber;
    private View viewError;

    public SubscriberActivity()
    {
    }

    private void openActionDialog(final Subscriber subscriber)
    {
        Dialog dialog = new Dialog(this);
        dialog.setContentView(0x7f030017);
        TextView textview = (TextView)dialog.findViewById(0x7f0a006c);
        TextView textview1 = (TextView)dialog.findViewById(0x7f0a006d);
        TextView textview2 = (TextView)dialog.findViewById(0x7f0a006e);
        ToggleButton togglebutton = (ToggleButton)dialog.findViewById(0x7f0a006f);
        ToggleButton togglebutton1 = (ToggleButton)dialog.findViewById(0x7f0a0070);
        Button button = (Button)dialog.findViewById(0x7f0a0071);
        textview.setText(subscriber.getName());
        textview2.setText(subscriber.getCallerId());
        textview1.setText(subscriber.getConferenceRole());
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final SubscriberActivity this$0;
            private final Subscriber val$subscriber;

            public void onClick(View view)
            {
                subscriberActionControll(SubscriberAction.KICK, subscriber);
            }

            
            {
                this$0 = SubscriberActivity.this;
                subscriber = subscriber1;
                super();
            }
        });
        togglebutton1.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final SubscriberActivity this$0;
            private final Subscriber val$subscriber;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag)
                {
                    subscriberActionControll(SubscriberAction.SPEAKER_OFF, subscriber);
                    return;
                } else
                {
                    subscriberActionControll(SubscriberAction.SPEAKER_ON, subscriber);
                    return;
                }
            }

            
            {
                this$0 = SubscriberActivity.this;
                subscriber = subscriber1;
                super();
            }
        });
        togglebutton.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final SubscriberActivity this$0;
            private final Subscriber val$subscriber;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag)
                {
                    subscriberActionControll(SubscriberAction.MIC_OFF, subscriber);
                    return;
                } else
                {
                    subscriberActionControll(SubscriberAction.MIC_ON, subscriber);
                    return;
                }
            }

            
            {
                this$0 = SubscriberActivity.this;
                subscriber = subscriber1;
                super();
            }
        });
        dialog.show();
    }

    public static void toSubscriberActivity(Activity activity, ConferenceItem conferenceitem)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/SubscriberActivity);
        intent.putExtra(KEY_CONFERENCE_ITEM, conferenceitem);
        activity.startActivityForResult(intent, 10);
    }

    protected void fetchActionResponse(String s)
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_101;
        }
        jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (jsonobject1.getString("rescode").equals("00"))
        {
            Utils.showToast(this, jsonobject1.getString("resmsg"));
            finish();
            return;
        }
        try
        {
            Utils.showToast(this, jsonobject1.getString("resmsg"));
            return;
        }
        catch (Exception exception)
        {
            try
            {
                Utils.printLog(exception.getMessage());
                return;
            }
            catch (Exception exception1)
            {
                Utils.printLog(exception1.getMessage());
            }
        }
        return;
        Utils.showToast(this, jsonobject.getString("resmsg"));
        return;
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        listSubscriber = Subscriber.getListSubscriber(s);
        if (listSubscriber != null && listSubscriber.size() > 0)
        {
            SubscriberAdapter subscriberadapter = new SubscriberAdapter(this, listSubscriber);
            lvSubscriber.setAdapter(subscriberadapter);
            return;
        } else
        {
            indicator.setVisibility(8);
            lvSubscriber.setVisibility(8);
            viewError.setVisibility(0);
            return;
        }
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        item = (ConferenceItem)getIntent().getSerializableExtra(KEY_CONFERENCE_ITEM);
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvSubscriber.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SubscriberActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                openActionDialog((Subscriber)listSubscriber.get(i));
            }

            
            {
                this$0 = SubscriberActivity.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listSubscriber = new ArrayList();
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        indicator.setVisibility(0);
        lvSubscriber.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("username", preference.getUsername().toLowerCase(Locale.ENGLISH));
            jsonobject.put("conference_id", item.getConferenceKey().getConferenceId());
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dataType", "GETSUBSCRIBER");
            jsonobject1.put("dataSource", "APP");
            jsonobject1.put("dataParameter", jsonobject);
            jsonobject1.put("transactionID", "");
            jsonobject1.put("statusCode", "");
            String s = jsonobject1.toString();
            Utils.printLog(s);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final SubscriberActivity this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    lvSubscriber.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    indicator.setVisibility(8);
                    lvSubscriber.setVisibility(0);
                    viewError.setVisibility(8);
                    String s1 = new String(abyte0);
                    Utils.printLog(s1);
                    fetchResponse(s1);
                }

            
            {
                this$0 = SubscriberActivity.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
    }

    public void initializeViews()
    {
        super.initializeViews();
        lvSubscriber = (ListView)findViewById(0x7f0a0066);
        indicator = (ProgressBar)findViewById(0x7f0a0065);
        viewError = findViewById(0x7f0a005b);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030015);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initialiazeIntent();
        initializeViews();
        initializeLibs();
        initializeRequest();
        initializeActions();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f090004, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        if (menuitem.getItemId() == 0x7f0a0100 && indicator.getVisibility() != 0)
        {
            initializeRequest();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void subscriberActionControll(SubscriberAction subscriberaction, Subscriber subscriber)
    {
        final ProgressDialog dialog;
        String s;
        String s1;
        dialog = new ProgressDialog(this);
        dialog.setMessage("Harap tunggu...");
        dialog.show();
        s = "";
        s1 = "";
        if (subscriberaction != SubscriberAction.MIC_ON) goto _L2; else goto _L1
_L1:
        s = "ROOM_SETSILENCE";
        s1 = "true";
_L3:
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("conference_id", item.getConferenceKey().getConferenceId());
            jsonobject.put("chairman_pass", ((ConferencePassword)item.getListPasswords().get(1)).getPassword());
            jsonobject.put("subscriberID", subscriber.getId());
            jsonobject.put("callID", subscriber.getCallerId());
            if (subscriberaction != SubscriberAction.KICK)
            {
                jsonobject.put("operation", s1);
            }
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dataType", s);
            jsonobject1.put("dataSource", "APP");
            jsonobject1.put("transactionID", "");
            jsonobject1.put("statusCode", "");
            jsonobject1.put("strMessage", "");
            jsonobject1.put("dataParameter", jsonobject);
            Utils.printLog(jsonobject1.toString());
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", requestparams);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final SubscriberActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Toast.makeText(SubscriberActivity.this, "Eror dalam mengirimkan request. Silakan coba kembali", 1).show();
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    String s2 = new String(abyte0);
                    Utils.printLog(s2);
                    fetchActionResponse(s2);
                }

            
            {
                this$0 = SubscriberActivity.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        break MISSING_BLOCK_LABEL_359;
_L2:
        if (subscriberaction != SubscriberAction.MIC_OFF)
        {
            break MISSING_BLOCK_LABEL_294;
        }
        s = "ROOM_SETSILENCE";
        s1 = "false";
          goto _L3
        if (subscriberaction != SubscriberAction.SPEAKER_ON)
        {
            break MISSING_BLOCK_LABEL_314;
        }
        s = "ROOM_SETLISTEN";
        s1 = "true";
          goto _L3
        if (subscriberaction != SubscriberAction.SPEAKER_OFF) goto _L5; else goto _L4
_L4:
        s = "ROOM_SETLISTEN";
        s1 = "false";
          goto _L3
_L5:
        if (subscriberaction != SubscriberAction.KICK) goto _L3; else goto _L6
_L6:
        s = "ROOM_KICK";
          goto _L3
    }






}
