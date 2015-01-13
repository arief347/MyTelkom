// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.neuron.mytelkom.adapter.NavDrawerListAdapter;
import com.neuron.mytelkom.fragment.DashboardFragment;
import com.neuron.mytelkom.fragment.HelpFragment;
import com.neuron.mytelkom.fragment.TicketTypeFragment;
import com.neuron.mytelkom.model.NavDrawerItem;
import com.neuron.mytelkom.utils.Preference;
import java.util.ArrayList;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

// Referenced classes of package com.neuron.mytelkom:
//            LoginActivity, ProfileActivity

public class MainActivity extends FragmentActivity
{
    private class SlideMenuClickListener
        implements android.widget.AdapterView.OnItemClickListener
    {

        final MainActivity this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            displayView(i);
        }

        private SlideMenuClickListener()
        {
            this$0 = MainActivity.this;
            super();
        }

        SlideMenuClickListener(SlideMenuClickListener slidemenuclicklistener)
        {
            this();
        }
    }


    private NavDrawerListAdapter adapter;
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerList;
    private CharSequence mDrawerTitle;
    private ActionBarDrawerToggle mDrawerToggle;
    private CharSequence mTitle;
    private ArrayList navDrawerItems;
    private TypedArray navMenuIcons;
    private String navMenuTitles[];

    public MainActivity()
    {
    }

    private void displayView(int i)
    {
        Object obj;
        String s;
        obj = null;
        s = null;
        i;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 87
    //                   1 102
    //                   2 117
    //                   3 132;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        break; /* Loop/switch isn't completed */
_L5:
        break MISSING_BLOCK_LABEL_132;
_L6:
        if (obj != null)
        {
            getSupportFragmentManager().beginTransaction().replace(0x7f0a0049, ((android.support.v4.app.Fragment) (obj)), s).commit();
            mDrawerList.setItemChecked(i, true);
            mDrawerList.setSelection(i);
            mDrawerLayout.closeDrawer(mDrawerList);
            return;
        } else
        {
            Log.e("MainActivity", "Error in creating fragment");
            return;
        }
_L2:
        obj = new DashboardFragment();
        s = DashboardFragment.FRAGMENT_TAG;
          goto _L6
_L3:
        obj = new TicketTypeFragment();
        s = TicketTypeFragment.FRAGMENT_TAG;
          goto _L6
_L4:
        obj = new HelpFragment();
        s = HelpFragment.FRAGMENT_TAG;
          goto _L6
        showLogoutDialog();
        obj = null;
        s = null;
          goto _L6
    }

    private void logout()
    {
        (new Preference(this)).clearCookies();
        LoginActivity.toLoginActivity(this);
        finish();
    }

    private void showLogoutDialog()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("Logout");
        builder.setMessage("Anda yakin logout dari aplikasi?").setCancelable(false).setPositiveButton("Ya", new android.content.DialogInterface.OnClickListener() {

            final MainActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                logout();
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }).setNegativeButton("Tidak", new android.content.DialogInterface.OnClickListener() {

            final MainActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        builder.create().show();
    }

    public static void toMainActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/MainActivity));
    }

    protected void attachBaseContext(Context context)
    {
        super.attachBaseContext(new CalligraphyContextWrapper(context));
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        mDrawerToggle.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000c);
        getActionBar().setBackgroundDrawable(new ColorDrawable(0xffff0000));
        getActionBar().setLogo(0x7f02000a);
        CharSequence charsequence = getTitle();
        mDrawerTitle = charsequence;
        mTitle = charsequence;
        navMenuTitles = getResources().getStringArray(0x7f070000);
        navMenuIcons = getResources().obtainTypedArray(0x7f070001);
        mDrawerLayout = (DrawerLayout)findViewById(0x7f0a0048);
        mDrawerList = (ListView)findViewById(0x7f0a004a);
        navDrawerItems = new ArrayList();
        navDrawerItems.add(new NavDrawerItem(navMenuTitles[0], navMenuIcons.getResourceId(0, -1)));
        navDrawerItems.add(new NavDrawerItem(navMenuTitles[1], navMenuIcons.getResourceId(1, -1)));
        navDrawerItems.add(new NavDrawerItem(navMenuTitles[2], navMenuIcons.getResourceId(2, -1)));
        navDrawerItems.add(new NavDrawerItem(navMenuTitles[3], navMenuIcons.getResourceId(4, -1)));
        navMenuIcons.recycle();
        mDrawerList.setOnItemClickListener(new SlideMenuClickListener(null));
        adapter = new NavDrawerListAdapter(getApplicationContext(), navDrawerItems);
        mDrawerList.setAdapter(adapter);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayShowTitleEnabled(false);
        mDrawerToggle = new ActionBarDrawerToggle(this, mDrawerLayout, 0x7f020027, 0, 0) {

            final MainActivity this$0;

            public void onDrawerClosed(View view)
            {
                invalidateOptionsMenu();
            }

            public void onDrawerOpened(View view)
            {
                getActionBar().setLogo(0x7f02000a);
                invalidateOptionsMenu();
            }

            
            {
                this$0 = MainActivity.this;
                super(activity, drawerlayout, i, j, k);
            }
        };
        mDrawerLayout.setDrawerListener(mDrawerToggle);
        if (bundle == null)
        {
            displayView(0);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (mDrawerToggle.onOptionsItemSelected(menuitem))
        {
            return true;
        }
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 2131362051: 
            ProfileActivity.toProfileActivity(this);
            break;
        }
        return true;
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        mDrawerToggle.syncState();
    }

    public void setTitle(CharSequence charsequence)
    {
        mTitle = charsequence;
        getActionBar().setTitle(mTitle);
    }


}
