// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

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
import com.neuron.mytelkom.model.PstnDetailSummary;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import org.apache.http.Header;
import org.json.JSONObject;

public class DetilFlexiFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DetilFlexiFragment";
    private String KEY_FLEXI_DATA;
    private Button btnDeleteProduct;
    private ProgressBar indicator;
    private LinearLayout lnDetilBilling;
    private LinearLayout lnDetilInformation;
    public Product product;
    Product products;
    private RelativeLayout rlCreateTicket;
    private RelativeLayout rlDetilBilling;
    private RelativeLayout rlDetilInformation;
    private ScrollView scContent;
    private TextView txtBilling;
    private TextView txtFlexiNo;
    private TextView txtOwnerAddress;
    private TextView txtOwnerName;
    private TextView txtPeriode;
    private TextView txtStatus;

    public DetilFlexiFragment()
    {
        KEY_FLEXI_DATA = "flexiData";
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
        products = Product.getFlexiDetailProduct(s);
        if (products == null)
        {
            break MISSING_BLOCK_LABEL_292;
        }
        indicator.setVisibility(8);
        scContent.setVisibility(0);
        btnDeleteProduct.setVisibility(0);
        txtFlexiNo.setText(Utils.replaceNull(products.getFastel()));
        txtStatus.setText(Utils.replaceNull(products.getStatus()));
        txtBilling.setText((new StringBuilder("Rp ")).append(Utils.replaceNull(products.getAmount())).toString());
        txtOwnerName.setText(Utils.replaceNull(products.getCustomer().getName()));
        txtOwnerAddress.setText(Utils.replaceNull(products.getCustomer().getAddress()));
        txtPeriode.setText(Utils.replaceNull(products.getPeriod()));
        int i = 0;
_L1:
        View view;
        TextView textview;
        TextView textview1;
        try
        {
            if (i >= products.getListPstnDetails().size())
            {
                return;
            }
        }
        catch (Exception exception)
        {
            return;
        }
        view = getActivity().getLayoutInflater().inflate(0x7f030035, null);
        textview = (TextView)view.findViewById(0x7f0a00db);
        textview1 = (TextView)view.findViewById(0x7f0a00dc);
        textview.setText(Utils.replaceNull(Utils.replaceNull(((PstnDetailSummary)products.getListPstnDetails().get(i)).getInstallment())));
        textview1.setText(Utils.replaceNull(((PstnDetailSummary)products.getListPstnDetails().get(i)).getNamount()));
        lnDetilBilling.addView(view);
        i++;
          goto _L1
        indicator.setVisibility(8);
        scContent.setVisibility(8);
        return;
    }

    public Product getProduct()
    {
        return product;
    }

    public void initializeActions()
    {
        super.initializeActions();
        rlDetilBilling.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilFlexiFragment this$0;

            public void onClick(View view)
            {
                if (lnDetilBilling.getVisibility() == 0)
                {
                    lnDetilBilling.setVisibility(8);
                    return;
                } else
                {
                    lnDetilBilling.setVisibility(0);
                    return;
                }
            }

            
            {
                this$0 = DetilFlexiFragment.this;
                super();
            }
        });
        rlDetilInformation.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilFlexiFragment this$0;

            public void onClick(View view)
            {
                if (lnDetilInformation.getVisibility() == 0)
                {
                    lnDetilInformation.setVisibility(8);
                    return;
                } else
                {
                    lnDetilInformation.setVisibility(0);
                    return;
                }
            }

            
            {
                this$0 = DetilFlexiFragment.this;
                super();
            }
        });
        rlCreateTicket.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilFlexiFragment this$0;

            public void onClick(View view)
            {
                CreateTicketActivity.toCreateTicketActivity(getActivity(), products, com.neuron.mytelkom.AddNewProductActivity.ProductType.FLEXI);
            }

            
            {
                this$0 = DetilFlexiFragment.this;
                super();
            }
        });
        btnDeleteProduct.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilFlexiFragment this$0;

            public void onClick(View view)
            {
                showDeleteDialog(products.getProductType(), products.getProductNo());
            }

            
            {
                this$0 = DetilFlexiFragment.this;
                super();
            }
        });
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        indicator.setVisibility(0);
        scContent.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomID", Utils.encodedParam(preference.getUsername()));
            jsonobject.put("productType", Utils.encodedParam("FLEXI"));
            jsonobject.put("productNo", Utils.encodedParam(getProduct().getProductNo()));
            String s = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.add("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileBroadbandDT.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final DetilFlexiFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    scContent.setVisibility(8);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    String s1 = new String(abyte0);
                    Utils.printLog(s1);
                    fetchResponse(s1);
                }

            
            {
                this$0 = DetilFlexiFragment.this;
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
            setProduct((Product)bundle.getSerializable(KEY_FLEXI_DATA));
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
        View view = layoutinflater.inflate(0x7f030020, viewgroup, false);
        rlDetilBilling = (RelativeLayout)view.findViewById(0x7f0a008c);
        rlDetilInformation = (RelativeLayout)view.findViewById(0x7f0a008f);
        lnDetilBilling = (LinearLayout)view.findViewById(0x7f0a008e);
        lnDetilInformation = (LinearLayout)view.findViewById(0x7f0a0090);
        indicator = (ProgressBar)view.findViewById(0x7f0a0076);
        scContent = (ScrollView)view.findViewById(0x7f0a0004);
        txtBilling = (TextView)view.findViewById(0x7f0a008b);
        txtFlexiNo = (TextView)view.findViewById(0x7f0a008a);
        txtOwnerAddress = (TextView)view.findViewById(0x7f0a0093);
        txtOwnerName = (TextView)view.findViewById(0x7f0a0092);
        txtPeriode = (TextView)view.findViewById(0x7f0a0091);
        txtStatus = (TextView)view.findViewById(0x7f0a008d);
        rlCreateTicket = (RelativeLayout)view.findViewById(0x7f0a0094);
        btnDeleteProduct = (Button)view.findViewById(0x7f0a0095);
        btnDeleteProduct.setVisibility(8);
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
        bundle.putSerializable(KEY_FLEXI_DATA, getProduct());
    }

    public void setProduct(Product product1)
    {
        product = product1;
    }





}
