// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.ActionBar;
import android.content.Intent;
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
import com.neuron.mytelkom.AddNewProductActivity;
import com.neuron.mytelkom.adapter.ImeAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.ImeiItem;
import com.neuron.mytelkom.utils.Preference;
import java.util.ArrayList;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilImeFragment

public class ImeFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "ImeFragment";
    private ProgressBar indicator;
    private ArrayList listItem;
    private ListView lvItem;
    private View viewError;

    public ImeFragment()
    {
    }

    private void toAddNewProduct()
    {
        Intent intent = new Intent(getActivity(), com/neuron/mytelkom/AddNewProductActivity);
        intent.putExtra(AddNewProductActivity.NEW_PRODUCT_KEY, com.neuron.mytelkom.AddNewProductActivity.ProductType.IME);
        startActivityForResult(intent, AddNewProductActivity.ADD_NEW_PRODUCT_CODE);
    }

    public void getImeData()
    {
        indicator.setVisibility(0);
        lvItem.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomID", preference.getUsername());
            jsonobject.put("productType", "IME");
            RequestParams requestparams = new RequestParams();
            requestparams.add("param", jsonobject.toString());
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileBroadband.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final ImeFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    indicator.setVisibility(8);
                    lvItem.setVisibility(0);
                    viewError.setVisibility(8);
                    listItem = ImeiItem.getListImeItem(new String(abyte0));
                    if (listItem != null && listItem.size() > 0)
                    {
                        setToView();
                        return;
                    } else
                    {
                        indicator.setVisibility(8);
                        lvItem.setVisibility(8);
                        viewError.setVisibility(0);
                        return;
                    }
                }

            
            {
                this$0 = ImeFragment.this;
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

    public void initializeActions()
    {
        super.initializeActions();
        lvItem.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ImeFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                toDetilIme(i);
            }

            
            {
                this$0 = ImeFragment.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listItem = new ArrayList();
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        getImeData();
        initializeActions();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == AddNewProductActivity.ADD_NEW_PRODUCT_CODE)
        {
            initializeRequest();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initializeLibs();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        menuinflater.inflate(0x7f090005, menu);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030028, viewgroup, false);
        lvItem = (ListView)view.findViewById(0x7f0a00bf);
        indicator = (ProgressBar)view.findViewById(0x7f0a0065);
        viewError = view.findViewById(0x7f0a005b);
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
        boolean flag = true;
        menuitem.getItemId();
        JVM INSTR lookupswitch 3: default 44
    //                   16908332: 58
    //                   2131362048: 67
    //                   2131362052: 52;
           goto _L1 _L2 _L3 _L4
_L1:
        flag = super.onOptionsItemSelected(menuitem);
_L6:
        return flag;
_L4:
        toAddNewProduct();
        return flag;
_L2:
        getActivity().finish();
        return flag;
_L3:
        if (indicator.getVisibility() != 0)
        {
            initializeRequest();
            return flag;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setToView()
    {
        super.setToView();
        ImeAdapter imeadapter = new ImeAdapter(getActivity(), listItem);
        lvItem.setAdapter(imeadapter);
    }

    protected void toDetilIme(int i)
    {
        DetilImeFragment detilimefragment = new DetilImeFragment();
        detilimefragment.setImeiItem((ImeiItem)listItem.get(i));
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.hide((ImeFragment)getFragmentManager().findFragmentByTag(FRAGMENT_TAG));
        fragmenttransaction.add(0x7f0a0042, detilimefragment, DetilImeFragment.FRAGMENT_TAG);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }






}
