// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.SubscriberActivity;
import com.neuron.mytelkom.adapter.ConferenceRoomAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.ConferenceItem;
import com.neuron.mytelkom.model.ConferenceKey;
import com.neuron.mytelkom.model.ConferencePassword;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import org.apache.http.Header;
import org.json.JSONObject;

public class ConferenceRoomFragment extends BaseFragment
{
    public static final class ConferenceActionType extends Enum
    {

        public static final ConferenceActionType CANCEL;
        public static final ConferenceActionType EDIT;
        private static final ConferenceActionType ENUM$VALUES[];
        public static final ConferenceActionType STOP;

        public static ConferenceActionType valueOf(String s)
        {
            return (ConferenceActionType)Enum.valueOf(com/neuron/mytelkom/fragment/ConferenceRoomFragment$ConferenceActionType, s);
        }

        public static ConferenceActionType[] values()
        {
            ConferenceActionType aconferenceactiontype[] = ENUM$VALUES;
            int i = aconferenceactiontype.length;
            ConferenceActionType aconferenceactiontype1[] = new ConferenceActionType[i];
            System.arraycopy(aconferenceactiontype, 0, aconferenceactiontype1, 0, i);
            return aconferenceactiontype1;
        }

        static 
        {
            EDIT = new ConferenceActionType("EDIT", 0);
            CANCEL = new ConferenceActionType("CANCEL", 1);
            STOP = new ConferenceActionType("STOP", 2);
            ConferenceActionType aconferenceactiontype[] = new ConferenceActionType[3];
            aconferenceactiontype[0] = EDIT;
            aconferenceactiontype[1] = CANCEL;
            aconferenceactiontype[2] = STOP;
            ENUM$VALUES = aconferenceactiontype;
        }

        private ConferenceActionType(String s, int i)
        {
            super(s, i);
        }
    }


    public static String FRAGMENT_TAG = "ConferenceRoomFragment";
    private String KEY_CONFERENCE_ROOM;
    private Button btnConfRoom;
    private Button btnSubscriber;
    ConferenceItem conferenceItem;
    private ListView lvConferenceRoom;
    private TextView txtConfRoomDuration;
    private TextView txtConfRoomModerator;
    private TextView txtConfRoomName;
    private TextView txtConfRoomState;
    private TextView txtConfRoomTotalAttendee;

    public ConferenceRoomFragment()
    {
        KEY_CONFERENCE_ROOM = "conferenceRoom";
    }

    private void closeFragment()
    {
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.remove(this);
        fragmenttransaction.commit();
        getFragmentManager().popBackStack();
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = new JSONObject(s);
        if (!jsonobject.getString("rescode").equals("00"))
        {
            break MISSING_BLOCK_LABEL_115;
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

    public ConferenceItem getConferenceItem()
    {
        return conferenceItem;
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvConferenceRoom.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ConferenceRoomFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
            }

            
            {
                this$0 = ConferenceRoomFragment.this;
                super();
            }
        });
        btnConfRoom.setOnClickListener(new android.view.View.OnClickListener() {

            final ConferenceRoomFragment this$0;

            public void onClick(View view)
            {
                showConferenceActionDialog("End Conference", "Do you wish to end this conference", ConferenceActionType.STOP);
            }

            
            {
                this$0 = ConferenceRoomFragment.this;
                super();
            }
        });
        btnSubscriber.setOnClickListener(new android.view.View.OnClickListener() {

            final ConferenceRoomFragment this$0;

            public void onClick(View view)
            {
                SubscriberActivity.toSubscriberActivity(getActivity(), getConferenceItem());
            }

            
            {
                this$0 = ConferenceRoomFragment.this;
                super();
            }
        });
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle != null)
        {
            setConferenceItem((ConferenceItem)bundle.getSerializable(KEY_CONFERENCE_ROOM));
        }
        setToView();
        initializeActions();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f03001e, viewgroup, false);
        lvConferenceRoom = (ListView)view.findViewById(0x7f0a0077);
        btnConfRoom = (Button)view.findViewById(0x7f0a0079);
        btnSubscriber = (Button)view.findViewById(0x7f0a0078);
        setHasOptionsMenu(true);
        return view;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            closeFragment();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(KEY_CONFERENCE_ROOM, getConferenceItem());
    }

    public void requestEndConference()
    {
        try
        {
            final ProgressDialog dialog = new ProgressDialog(getActivity());
            dialog.setMessage("Harap Tunggu...");
            dialog.setCancelable(true);
            dialog.show();
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("conference_id", getConferenceItem().getConferenceKey().getConferenceId());
            jsonobject.put("chairman_pass", ((ConferencePassword)getConferenceItem().getListPasswords().get(0)).getPassword());
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dataType", "ENDCONFERENCE");
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

                final ConferenceRoomFragment this$0;
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
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = ConferenceRoomFragment.this;
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

    public void setConferenceItem(ConferenceItem conferenceitem)
    {
        conferenceItem = conferenceitem;
    }

    public void setToView()
    {
        super.setToView();
        View view = getActivity().getLayoutInflater().inflate(0x7f03002f, null);
        txtConfRoomName = (TextView)view.findViewById(0x7f0a00c6);
        txtConfRoomState = (TextView)view.findViewById(0x7f0a00c7);
        txtConfRoomModerator = (TextView)view.findViewById(0x7f0a00c8);
        txtConfRoomTotalAttendee = (TextView)view.findViewById(0x7f0a00c9);
        txtConfRoomDuration = (TextView)view.findViewById(0x7f0a00ca);
        txtConfRoomName.setText(getConferenceItem().getSubject());
        txtConfRoomState.setText(getConferenceItem().getConferenceState());
        txtConfRoomDuration.setText(getConferenceItem().getDurationText());
        txtConfRoomTotalAttendee.setText((new StringBuilder(String.valueOf(getConferenceItem().getListAttendees().size()))).append(" Peserta").toString());
        txtConfRoomModerator.setText(getConferenceItem().getSchedusedName());
        lvConferenceRoom.addHeaderView(view);
        if (getConferenceItem().getListAttendees().size() > 0)
        {
            ConferenceRoomAdapter conferenceroomadapter = new ConferenceRoomAdapter(getActivity(), getConferenceItem().getListAttendees());
            lvConferenceRoom.setAdapter(conferenceroomadapter);
            return;
        } else
        {
            lvConferenceRoom.setAdapter(null);
            return;
        }
    }

    public void showConferenceActionDialog(String s, String s1, final ConferenceActionType type)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        builder.setTitle(s);
        builder.setMessage(s1).setCancelable(false).setPositiveButton("Yes", new android.content.DialogInterface.OnClickListener() {

            final ConferenceRoomFragment this$0;
            private final ConferenceActionType val$type;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (type == ConferenceActionType.STOP)
                {
                    requestEndConference();
                }
            }

            
            {
                this$0 = ConferenceRoomFragment.this;
                type = conferenceactiontype;
                super();
            }
        }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

            final ConferenceRoomFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                this$0 = ConferenceRoomFragment.this;
                super();
            }
        });
        builder.create().show();
    }

}
