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

public class DetilPtsnFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DetilPtsnFragment";
    private String PSTN_KEY;
    private Button btnHapusProduk;
    private ProgressBar indicator;
    private LinearLayout lnDetilBilling;
    private LinearLayout lnDetilInformation;
    public Product product;
    Product products;
    private RelativeLayout rlCreateTicket;
    private RelativeLayout rlDetilBilling;
    private RelativeLayout rlDetilInformation;
    private ScrollView scContent;
    private TextView txtAddress;
    private TextView txtBilling;
    private TextView txtOwnerName;
    private TextView txtPeriode;
    private TextView txtProductNo;
    private View viewError;

    public DetilPtsnFragment()
    {
        PSTN_KEY = "pstnKey";
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
        Utils.printLog(s);
        products = Product.getPstnDetailProduct(s);
        if (products != null)
        {
            indicator.setVisibility(8);
            scContent.setVisibility(0);
            viewError.setVisibility(8);
            btnHapusProduk.setVisibility(0);
            txtAddress.setText(Utils.replaceNull(products.getCustomer().getAddress()));
            txtBilling.setText((new StringBuilder("Rp ")).append(Utils.replaceNull(products.getAmount())).toString());
            txtOwnerName.setText(Utils.replaceNull(products.getCustomer().getName()));
            txtPeriode.setText(Utils.replaceNull(products.getPeriod()));
            txtProductNo.setText(Utils.replaceNull(products.getFastel()));
            int i = 0;
            do
            {
                if (i >= products.getListPstnDetails().size())
                {
                    return;
                }
                View view = getActivity().getLayoutInflater().inflate(0x7f030035, null);
                TextView textview = (TextView)view.findViewById(0x7f0a00db);
                TextView textview1 = (TextView)view.findViewById(0x7f0a00dc);
                textview.setText(Utils.replaceNull(Utils.replaceNull(((PstnDetailSummary)products.getListPstnDetails().get(i)).getInstallment())));
                textview1.setText(Utils.replaceNull(((PstnDetailSummary)products.getListPstnDetails().get(i)).getNamount()));
                lnDetilBilling.addView(view);
                i++;
            } while (true);
        } else
        {
            indicator.setVisibility(8);
            scContent.setVisibility(8);
            viewError.setVisibility(0);
            return;
        }
    }

    public Product getProduct()
    {
        return product;
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
            jsonobject.put("productType", Utils.encodedParam("PSTN"));
            jsonobject.put("productNo", Utils.encodedParam(getProduct().getProductNo()));
            String s = jsonobject.toString();
            Utils.printLog(s);
            RequestParams requestparams = new RequestParams();
            requestparams.add("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/MobileBroadbandDT.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final DetilPtsnFragment this$0;

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
                    Utils.printLog(new String(abyte0));
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = DetilPtsnFragment.this;
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
            setProduct((Product)bundle.getSerializable(PSTN_KEY));
        }
        initializeRequest();
        rlDetilBilling.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilPtsnFragment this$0;

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
                this$0 = DetilPtsnFragment.this;
                super();
            }
        });
        rlDetilInformation.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilPtsnFragment this$0;

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
                this$0 = DetilPtsnFragment.this;
                super();
            }
        });
        rlCreateTicket.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilPtsnFragment this$0;

            public void onClick(View view)
            {
                CreateTicketActivity.toCreateTicketActivity(getActivity(), products, com.neuron.mytelkom.AddNewProductActivity.ProductType.PTSN);
            }

            
            {
                this$0 = DetilPtsnFragment.this;
                super();
            }
        });
        btnHapusProduk.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilPtsnFragment this$0;

            public void onClick(View view)
            {
                showDeleteDialog((new StringBuilder("Telepon Rumah ")).append(getProduct().getProductNo()).toString(), getProduct().getProductNo());
            }

            
            {
                this$0 = DetilPtsnFragment.this;
                super();
            }
        });
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
        View view = layoutinflater.inflate(0x7f030023, viewgroup, false);
        rlDetilBilling = (RelativeLayout)view.findViewById(0x7f0a00a6);
        rlDetilInformation = (RelativeLayout)view.findViewById(0x7f0a00a8);
        lnDetilBilling = (LinearLayout)view.findViewById(0x7f0a00a7);
        lnDetilInformation = (LinearLayout)view.findViewById(0x7f0a00a9);
        indicator = (ProgressBar)view.findViewById(0x7f0a0076);
        scContent = (ScrollView)view.findViewById(0x7f0a00a3);
        viewError = view.findViewById(0x7f0a005b);
        txtAddress = (TextView)view.findViewById(0x7f0a00ac);
        txtBilling = (TextView)view.findViewById(0x7f0a00a5);
        txtOwnerName = (TextView)view.findViewById(0x7f0a00ab);
        txtPeriode = (TextView)view.findViewById(0x7f0a00aa);
        txtProductNo = (TextView)view.findViewById(0x7f0a00a4);
        rlCreateTicket = (RelativeLayout)view.findViewById(0x7f0a00ad);
        btnHapusProduk = (Button)view.findViewById(0x7f0a0095);
        btnHapusProduk.setVisibility(8);
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
        bundle.putSerializable(PSTN_KEY, getProduct());
    }

    public void setProduct(Product product1)
    {
        product = product1;
    }






}
