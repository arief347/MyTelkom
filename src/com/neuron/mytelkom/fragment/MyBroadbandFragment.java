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
import com.neuron.mytelkom.adapter.MyBroadbandAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.Product;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.LinkedList;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            DetilBroadbandFragment

public class MyBroadbandFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "MyBroadbandFragment";
    private ProgressBar indicator;
    private LinkedList listItem;
    private ListView lvItem;
    private View viewError;

    public MyBroadbandFragment()
    {
    }

    private void toAddNewProduct()
    {
        Intent intent = new Intent(getActivity(), com/neuron/mytelkom/AddNewProductActivity);
        intent.putExtra(AddNewProductActivity.NEW_PRODUCT_KEY, com.neuron.mytelkom.AddNewProductActivity.ProductType.SPEEDY);
        startActivityForResult(intent, AddNewProductActivity.ADD_NEW_PRODUCT_CODE);
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvItem.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final MyBroadbandFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                toDetilBillingFragment(i);
            }

            
            {
                this$0 = MyBroadbandFragment.this;
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
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomID", Utils.encodedParam(preference.getUsername()));
            jsonobject.put("productType", Utils.encodedParam("SPEEDY"));
            String s = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", Utils.encodedParam(s));
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileBroadband.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final MyBroadbandFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    lvItem.setVisibility(8);
                    indicator.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    lvItem.setVisibility(0);
                    indicator.setVisibility(8);
                    viewError.setVisibility(8);
                    new String(abyte0);
                    listItem = Product.getListProduct(new String(abyte0), "SPEEDY");
                    if (listItem != null)
                    {
                        setToView();
                        return;
                    } else
                    {
                        lvItem.setVisibility(8);
                        indicator.setVisibility(8);
                        viewError.setVisibility(0);
                        return;
                    }
                }

            
            {
                this$0 = MyBroadbandFragment.this;
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
        View view = layoutinflater.inflate(0x7f030029, viewgroup, false);
        lvItem = (ListView)view.findViewById(0x7f0a00c0);
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
        if (menuitem.getItemId() == 0x102002c)
        {
            getActivity().finish();
        }
        if (menuitem.getItemId() == 0x7f0a0100 && indicator.getVisibility() != 0)
        {
            initializeRequest();
        }
        if (menuitem.getItemId() == 0x7f0a0104)
        {
            toAddNewProduct();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void setToView()
    {
        super.setToView();
        MyBroadbandAdapter mybroadbandadapter = new MyBroadbandAdapter(getActivity(), listItem);
        lvItem.setAdapter(mybroadbandadapter);
    }

    protected void toDetilBillingFragment(int i)
    {
        DetilBroadbandFragment detilbroadbandfragment = new DetilBroadbandFragment();
        detilbroadbandfragment.setProduct((Product)listItem.get(i));
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.hide((MyBroadbandFragment)getFragmentManager().findFragmentByTag(FRAGMENT_TAG));
        fragmenttransaction.add(0x7f0a004b, detilbroadbandfragment, DetilBroadbandFragment.FRAGMENT_TAG);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }






}
