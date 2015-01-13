// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.ActionBar;
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
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.CreateNewConferenceActivity;
import com.neuron.mytelkom.adapter.ConferenceAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.ConferenceItem;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetailConferenceFragment

public class ConferenceFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "ConferenceFragment";
    private ProgressBar indicator;
    private ArrayList listItem;
    private ListView lvConference;
    private View viewError;

    public ConferenceFragment()
    {
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        Utils.printLog(s);
        listItem = ConferenceItem.getListConference(s);
        if (listItem != null && listItem.size() > 0)
        {
            indicator.setVisibility(8);
            lvConference.setVisibility(0);
            viewError.setVisibility(8);
            setToView();
            return;
        } else
        {
            indicator.setVisibility(8);
            lvConference.setVisibility(8);
            viewError.setVisibility(0);
            return;
        }
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvConference.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ConferenceFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                toItemPositionSelected(i);
            }

            
            {
                this$0 = ConferenceFragment.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listItem = new ArrayList();
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        indicator.setVisibility(0);
        lvConference.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("username", preference.getUsername().toLowerCase(Locale.ENGLISH));
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("dataType", "MYCONFERENCE");
            jsonobject1.put("dataSource", "APP");
            jsonobject1.put("dataParameter", jsonobject);
            jsonobject1.put("transactionID", "");
            jsonobject1.put("statusCode", "");
            jsonobject1.put("strMessage", "");
            String s = jsonobject1.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            Utils.printLog(s);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final ConferenceFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    lvConference.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    String s1 = new String(abyte0);
                    fetchResponse(s1);
                }

            
            {
                this$0 = ConferenceFragment.this;
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
        initializeRequest();
        initializeActions();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initializeLibs();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        menuinflater.inflate(0x7f090000, menu);
        if (listItem.size() == 2)
        {
            menu.getItem(0).setVisible(false);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f03001d, viewgroup, false);
        lvConference = (ListView)view.findViewById(0x7f0a0075);
        indicator = (ProgressBar)view.findViewById(0x7f0a0076);
        viewError = view.findViewById(0x7f0a005b);
        getActivity().getActionBar().setDisplayUseLogoEnabled(false);
        getActivity().getActionBar().setDisplayShowHomeEnabled(true);
        getActivity().getActionBar().setIcon(0x7f020045);
        getActivity().getActionBar().setTitle("");
        getActivity().getActionBar().setHomeButtonEnabled(true);
        setHasOptionsMenu(true);
        return view;
    }

    public void onDetach()
    {
        super.onDetach();
        try
        {
            asyncHttpClient.getHttpClient().getConnectionManager().shutdown();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag = true;
        menuitem.getItemId();
        JVM INSTR lookupswitch 3: default 44
    //                   16908332: 103
    //                   2131362047: 52
    //                   2131362048: 87;
           goto _L1 _L2 _L3 _L4
_L1:
        flag = super.onOptionsItemSelected(menuitem);
_L6:
        return flag;
_L3:
        if (listItem.size() == 2)
        {
            Utils.showToast(getActivity(), "Anda hanya diperbolehkan memiliki 2 konferensi");
            return flag;
        } else
        {
            CreateNewConferenceActivity.toCreateNewConferenceParticipant(getActivity(), com.neuron.mytelkom.CreateNewConferenceActivity.ConferenceFormFlag.NEW);
            return flag;
        }
_L4:
        if (indicator.getVisibility() == 0) goto _L6; else goto _L5
_L5:
        initializeRequest();
        return flag;
_L2:
        getActivity().finish();
        return flag;
    }

    public void onResume()
    {
        super.onResume();
    }

    public void setToView()
    {
        super.setToView();
        new ConferenceAdapter(getActivity(), listItem);
        try
        {
            View view = getActivity().getLayoutInflater().inflate(0x7f03001b, null);
            if (lvConference.getFooterViewsCount() == 0)
            {
                lvConference.addFooterView(view);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void toItemPositionSelected(int i)
    {
        DetailConferenceFragment detailconferencefragment = new DetailConferenceFragment();
        detailconferencefragment.setItem((ConferenceItem)listItem.get(i));
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.hide((ConferenceFragment)getFragmentManager().findFragmentByTag(FRAGMENT_TAG));
        fragmenttransaction.add(0x7f0a0003, detailconferencefragment, DetailConferenceFragment.FRAGMENT_TAG);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }




}
