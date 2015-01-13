// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.app.DatePickerDialog;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ListView;
import com.neuron.mytelkom.MyTicketActivity;
import com.neuron.mytelkom.adapter.TicketTypeAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.utils.Utils;
import java.util.Calendar;

public class TicketTypeFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "TicketTypeFragment";
    private Button btnAkhir;
    private Button btnMulai;
    private EditText edtTglAkhir;
    private EditText edtTglMulai;
    private ListView lvItem;
    private android.app.DatePickerDialog.OnDateSetListener mDateSetListenerAkhir;
    private android.app.DatePickerDialog.OnDateSetListener mDateSetListenerMulai;
    private int mDay;
    private int mMonth;
    private int mYear;

    public TicketTypeFragment()
    {
        mDateSetListenerMulai = new android.app.DatePickerDialog.OnDateSetListener() {

            final TicketTypeFragment this$0;

            public void onDateSet(DatePicker datepicker, int i, int j, int k)
            {
                mYear = i;
                mMonth = j;
                mDay = k;
                updateDisplayMulai();
            }

            
            {
                this$0 = TicketTypeFragment.this;
                super();
            }
        };
        mDateSetListenerAkhir = new android.app.DatePickerDialog.OnDateSetListener() {

            final TicketTypeFragment this$0;

            public void onDateSet(DatePicker datepicker, int i, int j, int k)
            {
                mYear = i;
                mMonth = j;
                mDay = k;
                updateDisplayAkhir();
            }

            
            {
                this$0 = TicketTypeFragment.this;
                super();
            }
        };
    }

    private void initDate()
    {
        Calendar calendar = Calendar.getInstance();
        mYear = calendar.get(1);
        mMonth = calendar.get(2);
        mDay = calendar.get(5);
        updateDisplayAkhir();
        updateDisplayMulai();
    }

    private void updateDisplayAkhir()
    {
        String s = (new StringBuilder(String.valueOf(mYear))).toString();
        String s1;
        String s2;
        if (1 + mMonth < 10)
        {
            s1 = (new StringBuilder("0")).append(1 + mMonth).toString();
        } else
        {
            s1 = (new StringBuilder(String.valueOf(1 + mMonth))).toString();
        }
        if (mDay < 10)
        {
            s2 = (new StringBuilder("0")).append(mDay).toString();
        } else
        {
            s2 = (new StringBuilder(String.valueOf(mDay))).toString();
        }
        edtTglMulai.setText((new StringBuilder()).append(s).append("-").append(s1).append("-").append(s2));
    }

    private void updateDisplayMulai()
    {
        String s = (new StringBuilder(String.valueOf(mYear))).toString();
        String s1;
        String s2;
        if (1 + mMonth < 10)
        {
            s1 = (new StringBuilder("0")).append(1 + mMonth).toString();
        } else
        {
            s1 = (new StringBuilder(String.valueOf(1 + mMonth))).toString();
        }
        if (mDay < 10)
        {
            s2 = (new StringBuilder("0")).append(mDay).toString();
        } else
        {
            s2 = (new StringBuilder(String.valueOf(mDay))).toString();
        }
        edtTglMulai.setText((new StringBuilder()).append(s).append("-").append(s1).append("-").append(s2));
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvItem.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final TicketTypeFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                String s = edtTglMulai.getText().toString().trim();
                if (!edtTglAkhir.getText().toString().trim().equals("") || !s.equals(""))
                {
                    toMyTicket(i);
                    return;
                } else
                {
                    Utils.showToast(getActivity(), "Harap pilih tanggal mulai dan akhir untuk pencarian tiket");
                    return;
                }
            }

            
            {
                this$0 = TicketTypeFragment.this;
                super();
            }
        });
        btnAkhir.setOnClickListener(new android.view.View.OnClickListener() {

            final TicketTypeFragment this$0;

            public void onClick(View view)
            {
                (new DatePickerDialog(getActivity(), mDateSetListenerAkhir, mYear, mMonth, mDay)).show();
            }

            
            {
                this$0 = TicketTypeFragment.this;
                super();
            }
        });
        btnMulai.setOnClickListener(new android.view.View.OnClickListener() {

            final TicketTypeFragment this$0;

            public void onClick(View view)
            {
                (new DatePickerDialog(getActivity(), mDateSetListenerMulai, mYear, mMonth, mDay)).show();
            }

            
            {
                this$0 = TicketTypeFragment.this;
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

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030041, viewgroup, false);
        lvItem = (ListView)view.findViewById(0x7f0a00fe);
        View view1 = getActivity().getLayoutInflater().inflate(0x7f030030, null);
        btnAkhir = (Button)view1.findViewById(0x7f0a00ce);
        btnMulai = (Button)view1.findViewById(0x7f0a00cc);
        edtTglAkhir = (EditText)view1.findViewById(0x7f0a00cd);
        edtTglMulai = (EditText)view1.findViewById(0x7f0a00cb);
        lvItem.addHeaderView(view1);
        return view;
    }

    public void setToView()
    {
        super.setToView();
        initDate();
        edtTglAkhir.setText(Utils.getCurrentDate());
        edtTglMulai.setText(Utils.getCurrentDate());
        lvItem.setAdapter(new TicketTypeAdapter(getActivity()));
    }

    protected void toMyTicket(int i)
    {
        MyTicketActivity.toMyTicketFragmentActivity(getActivity(), TicketTypeAdapter.productName[i - 1], edtTglMulai.getText().toString().trim(), edtTglAkhir.getText().toString().trim());
    }













}
