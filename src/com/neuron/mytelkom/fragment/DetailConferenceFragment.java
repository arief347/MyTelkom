// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.CreateNewConferenceActivity;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.ConferenceAttendees;
import com.neuron.mytelkom.model.ConferenceItem;
import com.neuron.mytelkom.model.ConferenceKey;
import com.neuron.mytelkom.model.ConferencePassword;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            ConferenceRoomFragment

public class DetailConferenceFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DetailConferenceFragment";
    private String CONFERENCE_DATA;
    private Button btnCancelConf;
    private Button btnDetailConference;
    private Button btnEditConf;
    private Button btnTelp;
    private ConferenceItem conferenceItem;
    private ProgressBar indicator;
    public ConferenceItem item;
    private LinearLayout lnAttendee;
    private LinearLayout lnContent;
    private LinearLayout lnScheduleAction;
    private LinearLayout lnScheduleControl;
    private ScrollView scDetail;
    private TextView txtConfId;
    private TextView txtConfName;
    private TextView txtConfNo;
    private TextView txtDuration;
    private TextView txtModerator;
    private TextView txtModeratorPass;
    private TextView txtPesertaPass;
    private View viewError;

    public DetailConferenceFragment()
    {
        CONFERENCE_DATA = "ConferenceData";
    }

    private void closeFragment()
    {
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.remove(this);
        fragmenttransaction.commit();
        getFragmentManager().popBackStack();
    }

    protected void fetchCancelResponse(String s)
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_110;
        }
        jsonobject1 = new JSONObject(jsonobject.getString("Result"));
        if (jsonobject1.getString("rescode").equals("00"))
        {
            Utils.showToast(getActivity(), jsonobject1.getString("resmsg"));
            getActivity().finish();
            return;
        }
        try
        {
            Utils.showToast(getActivity(), jsonobject1.getString("resmsg"));
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
        Utils.showToast(getActivity(), jsonobject.getString("resmsg"));
        return;
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        conferenceItem = ConferenceItem.getDetailConferenceItem(s);
        if (conferenceItem == null) goto _L2; else goto _L1
_L1:
        indicator.setVisibility(8);
        lnContent.setVisibility(0);
        viewError.setVisibility(8);
        txtConfId.setText(conferenceItem.getConferenceKey().getConferenceId());
        txtConfName.setText(conferenceItem.getSubject());
        txtConfNo.setText("08041000");
        txtDuration.setText(conferenceItem.getDurationText());
        txtModerator.setText(conferenceItem.getSchedusedName());
        txtModeratorPass.setText(((ConferencePassword)conferenceItem.getListPasswords().get(0)).getPassword());
        txtPesertaPass.setText(((ConferencePassword)conferenceItem.getListPasswords().get(1)).getPassword());
        if (lnAttendee.getChildCount() > 0)
        {
            lnAttendee.addView(null);
        }
          goto _L3
_L4:
        int i;
        if (i >= conferenceItem.getListAttendees().size())
        {
            if (conferenceItem.getConferenceState().equals("Berjalan") || conferenceItem.getConferenceState().toLowerCase(Locale.ENGLISH).equals("created"))
            {
                lnScheduleControl.setVisibility(8);
                lnScheduleAction.setVisibility(0);
                return;
            }
            break MISSING_BLOCK_LABEL_386;
        }
        try
        {
            View view = getActivity().getLayoutInflater().inflate(0x7f03003f, null);
            TextView textview = (TextView)view.findViewById(0x7f0a00fa);
            TextView textview1 = (TextView)view.findViewById(0x7f0a00fb);
            TextView textview2 = (TextView)view.findViewById(0x7f0a00fc);
            textview.setText(((ConferenceAttendees)conferenceItem.getListAttendees().get(i)).getName());
            textview1.setText(((ConferenceAttendees)conferenceItem.getListAttendees().get(i)).getEmail());
            textview2.setText(((ConferenceAttendees)conferenceItem.getListAttendees().get(i)).getPhone());
            lnAttendee.addView(view);
        }
        catch (Exception exception)
        {
            return;
        }
        i++;
        continue; /* Loop/switch isn't completed */
        lnScheduleControl.setVisibility(0);
        lnScheduleAction.setVisibility(8);
        return;
_L3:
        i = 0;
        if (true) goto _L4; else goto _L2
_L2:
    }

    public ConferenceItem getItem()
    {
        return item;
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnDetailConference.setOnClickListener(new android.view.View.OnClickListener() {

            final DetailConferenceFragment this$0;

            public void onClick(View view)
            {
                toCoferenceRoom();
            }

            
            {
                this$0 = DetailConferenceFragment.this;
                super();
            }
        });
        btnTelp.setOnClickListener(new android.view.View.OnClickListener() {

            final DetailConferenceFragment this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:08041000"));
                startActivity(intent);
            }

            
            {
                this$0 = DetailConferenceFragment.this;
                super();
            }
        });
        btnCancelConf.setOnClickListener(new android.view.View.OnClickListener() {

            final DetailConferenceFragment this$0;

            public void onClick(View view)
            {
                showConferenceActionDialog("Cancel Conference", "Do you wish to cancel this conference", ConferenceRoomFragment.ConferenceActionType.CANCEL);
            }

            
            {
                this$0 = DetailConferenceFragment.this;
                super();
            }
        });
        btnEditConf.setOnClickListener(new android.view.View.OnClickListener() {

            final DetailConferenceFragment this$0;

            public void onClick(View view)
            {
                CreateNewConferenceActivity.toUpdateConference(getActivity(), com.neuron.mytelkom.CreateNewConferenceActivity.ConferenceFormFlag.MODIFY, conferenceItem);
            }

            
            {
                this$0 = DetailConferenceFragment.this;
                super();
            }
        });
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        indicator.setVisibility(0);
        lnContent.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("username", preference.getUsername().toLowerCase(Locale.ENGLISH));
            jsonobject.put("phone", "");
            jsonobject.put("conference_id", getItem().getId());
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dataType", "DETAILCONFERENCE");
            jsonobject1.put("dataSource", "APP");
            jsonobject1.put("dataParameter", jsonobject);
            jsonobject1.put("transactionID", "");
            jsonobject1.put("statusCode", "");
            jsonobject1.put("strMessage", "");
            String s = jsonobject1.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final DetailConferenceFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    lnContent.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    Utils.printLog(new String(abyte0));
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = DetailConferenceFragment.this;
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

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle != null)
        {
            setItem((ConferenceItem)bundle.getSerializable(CONFERENCE_DATA));
        }
        initializeRequest();
        initializeActions();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        menuinflater.inflate(0x7f090004, menu);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f03001f, viewgroup, false);
        btnDetailConference = (Button)view.findViewById(0x7f0a0089);
        indicator = (ProgressBar)view.findViewById(0x7f0a0076);
        scDetail = (ScrollView)view.findViewById(0x7f0a007b);
        txtConfName = (TextView)view.findViewById(0x7f0a007c);
        txtConfNo = (TextView)view.findViewById(0x7f0a007d);
        txtConfId = (TextView)view.findViewById(0x7f0a007e);
        txtModeratorPass = (TextView)view.findViewById(0x7f0a007f);
        txtPesertaPass = (TextView)view.findViewById(0x7f0a0080);
        txtModerator = (TextView)view.findViewById(0x7f0a0081);
        txtDuration = (TextView)view.findViewById(0x7f0a0082);
        lnAttendee = (LinearLayout)view.findViewById(0x7f0a0083);
        viewError = view.findViewById(0x7f0a005b);
        btnTelp = (Button)view.findViewById(0x7f0a0088);
        btnCancelConf = (Button)view.findViewById(0x7f0a0086);
        btnEditConf = (Button)view.findViewById(0x7f0a0085);
        lnContent = (LinearLayout)view.findViewById(0x7f0a007a);
        lnScheduleControl = (LinearLayout)view.findViewById(0x7f0a0084);
        lnScheduleAction = (LinearLayout)view.findViewById(0x7f0a0087);
        setHasOptionsMenu(true);
        return view;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            closeFragment();
        }
        if (menuitem.getItemId() == 0x7f0a0100 && indicator.getVisibility() != 0)
        {
            initializeRequest();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(CONFERENCE_DATA, getItem());
    }

    protected void requestCancelConference()
    {
        try
        {
            final ProgressDialog dialog = new ProgressDialog(getActivity());
            dialog.setMessage("Harap Tunggu...");
            dialog.setCancelable(true);
            dialog.show();
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("conference_id", conferenceItem.getConferenceKey().getConferenceId());
            jsonobject.put("username", preference.getUsername().toLowerCase(Locale.ENGLISH));
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dataType", "CANCELCONFERENCE");
            jsonobject1.put("dataSource", "APP");
            jsonobject1.put("dataParameter", jsonobject);
            jsonobject1.put("transactionID", "");
            jsonobject1.put("statusCode", "");
            jsonobject1.put("strMessage", "");
            String s = jsonobject1.toString();
            Utils.printLog(s);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final DetailConferenceFragment this$0;
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
                    String s1 = new String(abyte0);
                    Utils.printLog(s1);
                    fetchCancelResponse(s1);
                }

            
            {
                this$0 = DetailConferenceFragment.this;
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
    }

    public void setItem(ConferenceItem conferenceitem)
    {
        item = conferenceitem;
    }

    public void showConferenceActionDialog(String s, String s1, final ConferenceRoomFragment.ConferenceActionType type)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        builder.setTitle(s);
        builder.setMessage(s1).setCancelable(false).setPositiveButton("Yes", new android.content.DialogInterface.OnClickListener() {

            final DetailConferenceFragment this$0;
            private final ConferenceRoomFragment.ConferenceActionType val$type;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (type == ConferenceRoomFragment.ConferenceActionType.CANCEL)
                {
                    requestCancelConference();
                }
            }

            
            {
                this$0 = DetailConferenceFragment.this;
                type = conferenceactiontype;
                super();
            }
        }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

            final DetailConferenceFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                this$0 = DetailConferenceFragment.this;
                super();
            }
        });
        builder.create().show();
    }

    protected void toCoferenceRoom()
    {
        ConferenceRoomFragment conferenceroomfragment = new ConferenceRoomFragment();
        conferenceroomfragment.setConferenceItem(conferenceItem);
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.hide((DetailConferenceFragment)getFragmentManager().findFragmentByTag(FRAGMENT_TAG));
        fragmenttransaction.add(0x7f0a0003, conferenceroomfragment, ConferenceRoomFragment.FRAGMENT_TAG);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }





}
