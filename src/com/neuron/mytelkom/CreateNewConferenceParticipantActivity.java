// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.adapter.ConferenceAddedItemAdapter;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.ConferenceAttendees;
import com.neuron.mytelkom.model.ConferenceItem;
import com.neuron.mytelkom.model.ConferenceKey;
import com.neuron.mytelkom.model.ConferencePassword;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceActivity, CreateNewConferenceAddParticipantActivity

public class CreateNewConferenceParticipantActivity extends BaseActivity
{

    public static int ADD_PARTICIPANT_REQUEST_CODE = 100;
    public static int ADD_PARTICIPANT_RESULT_CODE = 110;
    public static String CONF_ITEM = "Item";
    public static int DELETE_PARTICIPANT_RESULT_CODE = 120;
    public static String DELET_USER = "deletUser";
    public static int EDIT_PARTICIPANT_RESULT_CODE = 130;
    public static String EDIT_USER = "editUser";
    public static String NEW_USER = "newUser";
    private Button btnCancel;
    private Button btnSubmit;
    private ConferenceAddedItemAdapter conferenceAddedItemAdapter;
    ConferenceItem conferenceItem;
    CreateNewConferenceActivity.ConferenceFormFlag flag;
    private boolean isModify;
    private ArrayList listUser;
    private ListView lvParticipant;
    private TextView txtEmpty;

    public CreateNewConferenceParticipantActivity()
    {
        isModify = false;
    }

    private void setAdapterToListView()
    {
        conferenceAddedItemAdapter = new ConferenceAddedItemAdapter(this, listUser);
        lvParticipant.setAdapter(conferenceAddedItemAdapter);
        conferenceAddedItemAdapter.notifyDataSetChanged();
    }

    public static void toCreateNewConferenceParticipantActivity(Activity activity, ConferenceItem conferenceitem, CreateNewConferenceActivity.ConferenceFormFlag conferenceformflag)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/CreateNewConferenceParticipantActivity);
        intent.putExtra(CONF_ITEM, conferenceitem);
        intent.putExtra(CreateNewConferenceActivity.CONFERENCE_FLAG, conferenceformflag);
        activity.startActivityForResult(intent, 0);
    }

    public void createNewConference()
    {
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setMessage("Please wait...");
        dialog.setCancelable(true);
        dialog.show();
        JSONObject jsonobject;
        JSONArray jsonarray;
        int i;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        String s;
        RequestParams requestparams;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("subjectconf", conferenceItem.getSubject());
            jsonobject.put("typeconf", Utils.encodedParam(conferenceItem.getTypeConf()));
            jsonobject.put("dateconf", Utils.encodedParam(conferenceItem.getConferenceTime()));
            jsonobject.put("timeconf", conferenceItem.getConferenceHour());
            jsonobject.put("dhour", Utils.encodedParam(String.valueOf(conferenceItem.getdHours())));
            jsonobject.put("dminutes", Utils.encodedParam(String.valueOf(conferenceItem.getdMinutes())));
            jsonobject.put("maxattendees", Utils.encodedParam(String.valueOf(conferenceItem.getMaxAttendee())));
            jsonarray = new JSONArray();
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
            return;
        }
        i = 0;
        if (i >= listUser.size())
        {
            jsonobject.put("participant", jsonarray);
            jsonobject2 = new JSONObject();
            jsonobject2.put("username", Utils.encodedParam(preference.getUsername().toLowerCase(Locale.ENGLISH)));
            jsonobject2.put("data_conference", jsonobject);
            jsonobject3 = new JSONObject();
            jsonobject3.put("dataType", Utils.encodedParam("CREATECONFERENCE"));
            jsonobject3.put("dataSource", Utils.encodedParam("APP"));
            jsonobject3.put("dataParameter", jsonobject2);
            jsonobject3.put("transactionID", Utils.encodedParam(""));
            jsonobject3.put("statusCode", Utils.encodedParam(""));
            jsonobject3.put("strMessage", Utils.encodedParam(""));
            s = jsonobject3.toString();
            Utils.printLog(s);
            requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final CreateNewConferenceParticipantActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int j, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(j, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Toast.makeText(CreateNewConferenceParticipantActivity.this, "Terjadi kesalahan silakan coba kembali", 1).show();
                }

                public void onSuccess(int j, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(j, aheader, abyte0);
                    dialog.dismiss();
                    String s1 = new String(abyte0);
                    Utils.printLog(s1);
                    fetchResponse(s1);
                }

            
            {
                this$0 = CreateNewConferenceParticipantActivity.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
        jsonobject1 = new JSONObject();
        jsonobject1.put("name", Utils.encodedParam(((ConferenceAttendees)listUser.get(i)).getName()));
        jsonobject1.put("email", ((ConferenceAttendees)listUser.get(i)).getEmail());
        jsonobject1.put("sms", Utils.encodedParam(((ConferenceAttendees)listUser.get(i)).getPhone()));
        jsonarray.put(i, jsonobject1);
        i++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_166;
        }
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_131;
        }
        jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (jsonobject1.getString("rescode").equals("00"))
        {
            Utils.showToast(this, jsonobject1.getString("resmsg"));
            Intent intent = new Intent();
            intent.putExtra("status", "success");
            setResult(40, intent);
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
            Utils.printLog(exception.getMessage());
        }
        return;
        Utils.showToast(this, jsonobject.getString("resmsg"));
        return;
    }

    public void fetchUpdateResponse(String s)
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (jsonobject1.getString("rescode").equals("00"))
        {
            Utils.showToast(this, jsonobject1.getString("resmsg"));
            Intent intent = new Intent();
            intent.putExtra("status", "success");
            setResult(40, intent);
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
            Utils.printLog(exception.getMessage());
        }
        return;
        Utils.showToast(this, jsonobject.getString("resmsg"));
        return;
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        conferenceItem = (ConferenceItem)getIntent().getSerializableExtra(CONF_ITEM);
        flag = (CreateNewConferenceActivity.ConferenceFormFlag)getIntent().getSerializableExtra(CreateNewConferenceActivity.CONFERENCE_FLAG);
        if (flag == CreateNewConferenceActivity.ConferenceFormFlag.MODIFY)
        {
            isModify = true;
            listUser = conferenceItem.getListAttendees();
        }
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnCancel.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceParticipantActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = CreateNewConferenceParticipantActivity.this;
                super();
            }
        });
        btnSubmit.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceParticipantActivity this$0;

            public void onClick(View view)
            {
                if (listUser.size() < 3)
                {
                    Utils.showToast(CreateNewConferenceParticipantActivity.this, "Minimum conference participant is 3");
                    return;
                }
                if (isModify)
                {
                    updateConference();
                    return;
                } else
                {
                    createNewConference();
                    return;
                }
            }

            
            {
                this$0 = CreateNewConferenceParticipantActivity.this;
                super();
            }
        });
        lvParticipant.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CreateNewConferenceParticipantActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                CreateNewConferenceAddParticipantActivity.toCreateNewConferenceAddParticipantActivity(CreateNewConferenceParticipantActivity.this, CreateNewConferenceAddParticipantActivity.ParticipantFormType.EDIT, (ConferenceAttendees)listUser.get(i), i);
            }

            
            {
                this$0 = CreateNewConferenceParticipantActivity.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listUser = new ArrayList();
    }

    public void initializeViews()
    {
        super.initializeViews();
        lvParticipant = (ListView)findViewById(0x7f0a0018);
        lvParticipant.setAdapter(null);
        txtEmpty = (TextView)findViewById(0x7f0a0017);
        btnCancel = (Button)findViewById(0x7f0a001a);
        btnSubmit = (Button)findViewById(0x7f0a0019);
        if (isModify)
        {
            btnSubmit.setText("Update");
            return;
        } else
        {
            btnSubmit.setText("Submit");
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == ADD_PARTICIPANT_RESULT_CODE)
        {
            ConferenceAttendees conferenceattendees1 = (ConferenceAttendees)intent.getSerializableExtra(NEW_USER);
            listUser.add(conferenceattendees1);
            setAdapterToListView();
        }
        if (j == EDIT_PARTICIPANT_RESULT_CODE)
        {
            ConferenceAttendees conferenceattendees = (ConferenceAttendees)intent.getSerializableExtra(EDIT_USER);
            int l = intent.getIntExtra(CreateNewConferenceAddParticipantActivity.KEY_POSITION, 0);
            listUser.set(l, conferenceattendees);
            setAdapterToListView();
        }
        if (j == DELETE_PARTICIPANT_RESULT_CODE)
        {
            int k = intent.getIntExtra(CreateNewConferenceAddParticipantActivity.KEY_POSITION, 0);
            listUser.remove(k);
            setAdapterToListView();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030004);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeLibs();
        initialiazeIntent();
        initializeViews();
        setToView();
        initializeActions();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f090002, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131362050: 
            CreateNewConferenceAddParticipantActivity.toCreateNewConferenceAddParticipantActivity(this, CreateNewConferenceAddParticipantActivity.ParticipantFormType.ADD);
            return true;

        case 16908332: 
            finish();
            return true;
        }
    }

    protected void onResume()
    {
        super.onResume();
        if (listUser.size() > 0)
        {
            txtEmpty.setVisibility(8);
        }
    }

    public void setToView()
    {
        super.setToView();
        setAdapterToListView();
    }

    public void updateConference()
    {
        int i;
        final ProgressDialog dialog = new ProgressDialog(this);
        dialog.setMessage("Please wait...");
        dialog.setCancelable(true);
        dialog.show();
        JSONObject jsonobject;
        String s;
        String s1;
        JSONArray jsonarray;
        int j;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        JSONObject jsonobject3;
        String s2;
        RequestParams requestparams;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("subjectconf", conferenceItem.getSubject());
            jsonobject.put("conference_id", conferenceItem.getConferenceKey().getConferenceId());
            jsonobject.put("typeconf", Utils.encodedParam("Scheduled"));
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
            return;
        }
        s = "";
        s1 = "";
        i = 0;
_L7:
        if (i < conferenceItem.getListPasswords().size()) goto _L2; else goto _L1
_L1:
        jsonobject.put("guestpass", Utils.encodedParam(s));
        jsonobject.put("chairmanpass", Utils.encodedParam(s1));
        jsonobject.put("dateconf", Utils.encodedParam(conferenceItem.getConferenceTime()));
        jsonobject.put("timeconf", conferenceItem.getConferenceHour());
        jsonobject.put("dhour", Utils.encodedParam(String.valueOf(conferenceItem.getdHours())));
        jsonobject.put("dminutes", Utils.encodedParam(String.valueOf(conferenceItem.getdMinutes())));
        jsonobject.put("maxattendees", Utils.encodedParam(String.valueOf(conferenceItem.getMaxAttendee())));
        jsonarray = new JSONArray();
        j = 0;
_L5:
        if (j >= listUser.size())
        {
            jsonobject.put("participant", jsonarray);
            jsonobject2 = new JSONObject();
            jsonobject2.put("username", Utils.encodedParam(preference.getUsername().toLowerCase(Locale.ENGLISH)));
            jsonobject2.put("data_conference", jsonobject);
            jsonobject3 = new JSONObject();
            jsonobject3.put("dataType", Utils.encodedParam("MODIFYCONFERENCE"));
            jsonobject3.put("dataSource", Utils.encodedParam("APP"));
            jsonobject3.put("dataParameter", jsonobject2);
            jsonobject3.put("transactionID", Utils.encodedParam(""));
            jsonobject3.put("statusCode", Utils.encodedParam(""));
            jsonobject3.put("strMessage", Utils.encodedParam(""));
            s2 = jsonobject3.toString();
            Utils.printLog(s2);
            requestparams = new RequestParams();
            requestparams.put("param", s2);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final CreateNewConferenceParticipantActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int k, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(k, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Toast.makeText(CreateNewConferenceParticipantActivity.this, "Terjadi kesalahan silakan coba kembali", 1).show();
                }

                public void onSuccess(int k, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(k, aheader, abyte0);
                    dialog.dismiss();
                    String s3 = new String(abyte0);
                    Utils.printLog(s3);
                    fetchUpdateResponse(s3);
                }

            
            {
                this$0 = CreateNewConferenceParticipantActivity.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
          goto _L3
_L2:
        if (((ConferencePassword)conferenceItem.getListPasswords().get(i)).getConferenceRole().equals("chair"))
        {
            s1 = ((ConferencePassword)conferenceItem.getListPasswords().get(i)).getPassword();
            break; /* Loop/switch isn't completed */
        }
        if (((ConferencePassword)conferenceItem.getListPasswords().get(i)).getConferenceRole().equals("general"))
        {
            s = ((ConferencePassword)conferenceItem.getListPasswords().get(i)).getPassword();
        }
        break; /* Loop/switch isn't completed */
_L3:
        jsonobject1 = new JSONObject();
        jsonobject1.put("name", ((ConferenceAttendees)listUser.get(j)).getName());
        jsonobject1.put("email", ((ConferenceAttendees)listUser.get(j)).getEmail());
        jsonobject1.put("sms", Utils.encodedParam(((ConferenceAttendees)listUser.get(j)).getPhone()));
        jsonarray.put(j, jsonobject1);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }



}
