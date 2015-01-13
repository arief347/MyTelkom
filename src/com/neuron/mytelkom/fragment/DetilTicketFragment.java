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
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.adapter.TicketTrackingAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.Ticket;
import com.neuron.mytelkom.utils.Preference;
import java.util.ArrayList;
import org.apache.http.Header;
import org.json.JSONObject;

public class DetilTicketFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DetilTicketFragment";
    private String TICKET_KEY;
    private ProgressBar indicator;
    private ArrayList listItem;
    private LinearLayout lnContent;
    private LinearLayout lnDetailTracking;
    private ListView lvTrackingStatus;
    private RelativeLayout rlDetail;
    private RelativeLayout rlTrackingStatus;
    private ScrollView scDetailTracking;
    public Ticket ticket;
    private TextView txtDetilJenisPengaduan;
    private TextView txtJenisPengaduan;
    private TextView txtJenisTiket;
    private TextView txtKontakPelapor;
    private TextView txtLokasiPelapor;
    private TextView txtNamaPelapor;
    private TextView txtNoProduk;
    private TextView txtTicketStatus;

    public DetilTicketFragment()
    {
        TICKET_KEY = "TicketKey";
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
        indicator.setVisibility(8);
        lnContent.setVisibility(0);
        listItem = Ticket.getDetailTicket(s);
        if (listItem != null && listItem.size() > 0)
        {
            setTrackingData();
        }
    }

    public Ticket getTicket()
    {
        return ticket;
    }

    public void initializeActions()
    {
        super.initializeActions();
        rlDetail.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilTicketFragment this$0;

            public void onClick(View view)
            {
                if (scDetailTracking.getVisibility() == 0)
                {
                    scDetailTracking.setVisibility(8);
                    return;
                } else
                {
                    scDetailTracking.setVisibility(0);
                    return;
                }
            }

            
            {
                this$0 = DetilTicketFragment.this;
                super();
            }
        });
        rlTrackingStatus.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilTicketFragment this$0;

            public void onClick(View view)
            {
                if (lnDetailTracking.getVisibility() == 0)
                {
                    lnDetailTracking.setVisibility(8);
                    return;
                }
                if (listItem.size() < 0)
                {
                    setTrackingData();
                }
                lnDetailTracking.setVisibility(0);
            }

            
            {
                this$0 = DetilTicketFragment.this;
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
        lnContent.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomID", preference.getUsername());
            jsonobject.put("productType", getTicket().getProductName());
            jsonobject.put("productNo", getTicket().getProductNo());
            String s = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileMyTicketDT.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final DetilTicketFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    lnContent.setVisibility(8);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    String s1 = new String(abyte0);
                    fetchResponse(s1);
                }

            
            {
                this$0 = DetilTicketFragment.this;
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
            setTicket((Ticket)bundle.getSerializable(TICKET_KEY));
        }
        setToView();
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
        menuinflater.inflate(0x7f090004, menu);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030024, viewgroup, false);
        rlDetail = (RelativeLayout)view.findViewById(0x7f0a00b1);
        rlTrackingStatus = (RelativeLayout)view.findViewById(0x7f0a00ba);
        scDetailTracking = (ScrollView)view.findViewById(0x7f0a00b2);
        lnDetailTracking = (LinearLayout)view.findViewById(0x7f0a00bb);
        lvTrackingStatus = (ListView)view.findViewById(0x7f0a00bc);
        txtTicketStatus = (TextView)view.findViewById(0x7f0a00b0);
        txtDetilJenisPengaduan = (TextView)view.findViewById(0x7f0a00b6);
        txtJenisPengaduan = (TextView)view.findViewById(0x7f0a00b5);
        txtJenisTiket = (TextView)view.findViewById(0x7f0a00b4);
        txtKontakPelapor = (TextView)view.findViewById(0x7f0a00b9);
        txtLokasiPelapor = (TextView)view.findViewById(0x7f0a00b7);
        txtNamaPelapor = (TextView)view.findViewById(0x7f0a00b8);
        txtNoProduk = (TextView)view.findViewById(0x7f0a00b3);
        indicator = (ProgressBar)view.findViewById(0x7f0a0076);
        lnContent = (LinearLayout)view.findViewById(0x7f0a00ae);
        getActivity().getActionBar().setDisplayUseLogoEnabled(false);
        getActivity().getActionBar().setDisplayShowHomeEnabled(true);
        getActivity().getActionBar().setIcon(0x7f020045);
        getActivity().getActionBar().setTitle("");
        getActivity().getActionBar().setHomeButtonEnabled(true);
        getActivity().getActionBar().setDisplayHomeAsUpEnabled(true);
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
        bundle.putSerializable(TICKET_KEY, getTicket());
    }

    public void setTicket(Ticket ticket1)
    {
        ticket = ticket1;
    }

    public void setToView()
    {
        super.setToView();
        txtNoProduk.setText(getTicket().getProductNo());
        txtTicketStatus.setText(getTicket().getCompaintStatus());
        txtDetilJenisPengaduan.setText(getTicket().getComplaintDescription());
        txtJenisPengaduan.setText(getTicket().getComplaintCategoryDescription());
        txtJenisTiket.setText(getTicket().getTicketType());
        txtKontakPelapor.setText(getTicket().getCustomerContact());
        txtLokasiPelapor.setText(getTicket().getCustomerLocation());
        txtNamaPelapor.setText(getTicket().getCustomerName());
    }

    protected void setTrackingData()
    {
        TicketTrackingAdapter tickettrackingadapter = new TicketTrackingAdapter(getActivity(), listItem);
        lvTrackingStatus.setAdapter(tickettrackingadapter);
    }






}
