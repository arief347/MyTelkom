// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.ImeiItem;

public class DetilImeFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "DetilImeFragment";
    private String KEY_IME;
    private Button btnDelete;
    public ImeiItem imeiItem;
    private TextView txtDescription;
    private TextView txtName;
    private TextView txtPackage;

    public DetilImeFragment()
    {
        KEY_IME = "ImeKey";
    }

    private void closeFragment()
    {
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.remove(this);
        fragmenttransaction.commit();
        getFragmentManager().popBackStack();
    }

    public ImeiItem getImeiItem()
    {
        return imeiItem;
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnDelete.setOnClickListener(new android.view.View.OnClickListener() {

            final DetilImeFragment this$0;

            public void onClick(View view)
            {
                showDeleteDialog(getImeiItem().getProductType(), getImeiItem().getProductNo());
            }

            
            {
                this$0 = DetilImeFragment.this;
                super();
            }
        });
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle != null)
        {
            setImeiItem((ImeiItem)bundle.getSerializable(KEY_IME));
        }
        setToView();
        initializeActions();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030021, viewgroup, false);
        txtName = (TextView)view.findViewById(0x7f0a0096);
        txtDescription = (TextView)view.findViewById(0x7f0a0098);
        txtPackage = (TextView)view.findViewById(0x7f0a0097);
        btnDelete = (Button)view.findViewById(0x7f0a0099);
        setHasOptionsMenu(true);
        return view;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            closeFragment();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(KEY_IME, getImeiItem());
    }

    public void setImeiItem(ImeiItem imeiitem)
    {
        imeiItem = imeiitem;
    }

    public void setToView()
    {
        super.setToView();
        txtName.setText(getImeiItem().getProductType());
        txtDescription.setText((new StringBuilder("Description : ")).append(getImeiItem().getProductDesc()).toString());
        txtPackage.setText((new StringBuilder("Package : ")).append(getImeiItem().getProductPackage()).toString());
    }

}
