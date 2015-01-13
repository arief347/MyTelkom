// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.ActionBar;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import com.neuron.mytelkom.ConferenceActivity;
import com.neuron.mytelkom.FlexiActivity;
import com.neuron.mytelkom.ImeActivity;
import com.neuron.mytelkom.MyBroadbandActivity;
import com.neuron.mytelkom.ProfileActivity;
import com.neuron.mytelkom.PtsnActivity;
import com.neuron.mytelkom.adapter.DashboardAdapter;
import com.neuron.mytelkom.base.BaseFragment;

public class DashboardFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DashboardFragment";
    private ListView lvDashboard;

    public DashboardFragment()
    {
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvDashboard.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final DashboardFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                toItemPositionSelected(i);
            }

            
            {
                this$0 = DashboardFragment.this;
                super();
            }
        });
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        setToView();
        initializeActions();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        menuinflater.inflate(0x7f090003, menu);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030027, viewgroup, false);
        lvDashboard = (ListView)view.findViewById(0x7f0a00be);
        getActivity().getActionBar().setDisplayUseLogoEnabled(false);
        getActivity().getActionBar().setDisplayShowHomeEnabled(true);
        getActivity().getActionBar().setIcon(0x7f020045);
        getActivity().getActionBar().setTitle("");
        getActivity().getActionBar().setHomeButtonEnabled(true);
        setHasOptionsMenu(true);
        return view;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0a0103)
        {
            ProfileActivity.toProfileActivity(getActivity());
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void setToView()
    {
        super.setToView();
        DashboardAdapter dashboardadapter = new DashboardAdapter(getActivity());
        lvDashboard.setAdapter(dashboardadapter);
    }

    protected void toItemPositionSelected(int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            ConferenceActivity.toConferenceActivity(getActivity());
            return;

        case 1: // '\001'
            PtsnActivity.toPtsnActivity(getActivity());
            return;

        case 2: // '\002'
            MyBroadbandActivity.toMyBroadbandActivity(getActivity());
            return;

        case 3: // '\003'
            FlexiActivity.toFlexiActivity(getActivity());
            return;

        case 4: // '\004'
            ImeActivity.toImeFragment(getActivity());
            break;
        }
    }

}
