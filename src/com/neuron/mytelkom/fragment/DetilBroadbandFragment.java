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
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.CreateTicketActivity;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.Customer;
import com.neuron.mytelkom.model.Product;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

public class DetilBroadbandFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DetilBroabandFragment";
    private String KEY_BROADBAND;
    private Button btnDeleteProduct;
    private ProgressBar indicator;
    public Product product;
    Product products;
    private RelativeLayout rlCreateTicket;
    private ScrollView scContent;
    private TextView txtAddress;
    private TextView txtBilling;
    private TextView txtNo;
    private TextView txtOwner;
    private TextView txtPriod;
    private TextView txtStatus;
    private View viewError;

    public DetilBroadbandFragment()
    {
        KEY_BROADBAND = "broadbandProduct";
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
        try
        {
            products = Product.getSpeedyDetail(s);
            if (products != null)
            {
                indicator.setVisibility(8);
                scContent.setVisibility(0);
                viewError.setVisibility(8);
                btnDeleteProduct.setVisibility(0);
                txtNo.setText(Utils.replaceNull(products.getFastel()));
                txtStatus.setText(Utils.replaceNull(products.getStatus()));
                txtBilling.setText((new StringBuilder("Rp ")).append(Utils.replaceNull(products.getAmount())).toString());
                txtOwner.setText(Utils.replaceNull(products.getCustomer().getName()));
                txtAddress.setText(Utils.replaceNull(products.getCustomer().getAddress()));
                txtPriod.setText(Utils.replaceNull(products.getPeriod()));
                return;
            }
        }
        catch (Exception exception)
        {
            return;
        }
        indicator.setVisibility(8);
        scContent.setVisibility(8);
        viewError.setVisibility(0);
        return;
    }

    public Product getProduct()
    {
        return product;
    }

    public void initializeActions()
    {
        super.initializeActions();
        rlCreateTicket.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilBroadbandFragment this$0;

            public void onClick(View view)
            {
                CreateTicketActivity.toCreateTicketActivity(getActivity(), products, com.neuron.mytelkom.AddNewProductActivity.ProductType.SPEEDY);
            }

            
            {
                this$0 = DetilBroadbandFragment.this;
                super();
            }
        });
        btnDeleteProduct.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilBroadbandFragment this$0;

            public void onClick(View view)
            {
                showDeleteDialog(products.getProductType(), products.getProductNo());
            }

            
            {
                this$0 = DetilBroadbandFragment.this;
                super();
            }
        });
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        indicator.setVisibility(0);
        scContent.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomID", Utils.encodedParam(preference.getUsername()));
            jsonobject.put("productType", Utils.encodedParam("SPEEDY"));
            jsonobject.put("productNo", Utils.encodedParam(getProduct().getProductNo()));
            String s = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.add("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileBroadbandDT.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final DetilBroadbandFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    scContent.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    String s1 = new String(abyte0);
                    fetchResponse(s1);
                }

            
            {
                this$0 = DetilBroadbandFragment.this;
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
            setProduct((Product)bundle.getSerializable(KEY_BROADBAND));
        }
        setToView();
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
        View view = layoutinflater.inflate(0x7f030022, viewgroup, false);
        txtNo = (TextView)view.findViewById(0x7f0a009b);
        txtBilling = (TextView)view.findViewById(0x7f0a009c);
        txtOwner = (TextView)view.findViewById(0x7f0a009f);
        txtPriod = (TextView)view.findViewById(0x7f0a009d);
        txtAddress = (TextView)view.findViewById(0x7f0a00a0);
        txtStatus = (TextView)view.findViewById(0x7f0a009e);
        viewError = view.findViewById(0x7f0a005b);
        scContent = (ScrollView)view.findViewById(0x7f0a009a);
        indicator = (ProgressBar)view.findViewById(0x7f0a0076);
        rlCreateTicket = (RelativeLayout)view.findViewById(0x7f0a00a1);
        btnDeleteProduct = (Button)view.findViewById(0x7f0a0095);
        btnDeleteProduct.setVisibility(8);
        setHasOptionsMenu(true);
        return view;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0a0100 && indicator.getVisibility() != 0)
        {
            initializeRequest();
        }
        if (menuitem.getItemId() == 0x102002c)
        {
            closeFragment();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(KEY_BROADBAND, getProduct());
    }

    public void setProduct(Product product1)
    {
        product = product1;
    }

    public void setToView()
    {
        super.setToView();
        getActivity().getActionBar().setDisplayUseLogoEnabled(false);
        getActivity().getActionBar().setDisplayShowHomeEnabled(true);
        getActivity().getActionBar().setIcon(0x7f020045);
        getActivity().getActionBar().setTitle("");
        getActivity().getActionBar().setHomeButtonEnabled(true);
        getActivity().getActionBar().setDisplayHomeAsUpEnabled(true);
    }




}
