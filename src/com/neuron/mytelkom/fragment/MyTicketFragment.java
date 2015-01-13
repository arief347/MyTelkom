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
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.adapter.MyTicketAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.Ticket;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.LinkedList;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilTicketFragment

public class MyTicketFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "MyTicketFragment";
    private String ProductName;
    private ProgressBar indicator;
    private LinkedList listItem;
    private ListView lvItem;
    private String tglDari;
    private String tglHingga;
    private TextView txtTitle;

    public MyTicketFragment()
    {
    }

    private void closeFragment()
    {
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.remove(this);
        fragmenttransaction.commit();
        getFragmentManager().popBackStack();
    }

    public String getProductName()
    {
        return ProductName;
    }

    public String getTglDari()
    {
        return tglDari;
    }

    public String getTglHingga()
    {
        return tglHingga;
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvItem.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final MyTicketFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                toDetilTicket(i);
            }

            
            {
                this$0 = MyTicketFragment.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listItem = new LinkedList();
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        indicator.setVisibility(0);
        lvItem.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomID", preference.getUsername());
            jsonobject.put("productType", getProductName());
            jsonobject.put("dateStart", getTglDari());
            jsonobject.put("dateEnd", getTglHingga());
            String s = jsonobject.toString();
            Utils.printLog(s);
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileMyTicket.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final MyTicketFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    lvItem.setVisibility(8);
                    indicator.setVisibility(8);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    lvItem.setVisibility(0);
                    indicator.setVisibility(8);
                    Utils.printLog(new String(abyte0));
                    listItem = Ticket.getListTicket(new String(abyte0));
                    if (listItem != null)
                    {
                        MyTicketAdapter myticketadapter = new MyTicketAdapter(getActivity(), listItem);
                        lvItem.setAdapter(myticketadapter);
                        return;
                    } else
                    {
                        txtTitle.setText("No data available");
                        return;
                    }
                }

            
            {
                this$0 = MyTicketFragment.this;
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
        View view = layoutinflater.inflate(0x7f03002a, viewgroup, false);
        lvItem = (ListView)view.findViewById(0x7f0a00c3);
        indicator = (ProgressBar)view.findViewById(0x7f0a0065);
        txtTitle = (TextView)view.findViewById(0x7f0a00c2);
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
        if (menuitem.getItemId() == 0x7f0a0100)
        {
            if (indicator.getVisibility() != 0)
            {
                initializeRequest();
            }
            return true;
        }
        if (menuitem.getItemId() == 0x102002c)
        {
            getActivity().finish();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void setProductName(String s)
    {
        ProductName = s;
    }

    public void setTglDari(String s)
    {
        tglDari = s;
    }

    public void setTglHingga(String s)
    {
        tglHingga = s;
    }

    public void setToView()
    {
        super.setToView();
        txtTitle.setText((new StringBuilder("Dari : ")).append(getTglDari()).append(" hingga ").append(getTglHingga()).toString());
    }

    protected void toDetilTicket(int i)
    {
        DetilTicketFragment detilticketfragment = new DetilTicketFragment();
        detilticketfragment.setTicket((Ticket)listItem.get(i));
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.hide((MyTicketFragment)getFragmentManager().findFragmentByTag(FRAGMENT_TAG));
        fragmenttransaction.add(0x7f0a004c, detilticketfragment, DetilTicketFragment.FRAGMENT_TAG);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }






}
