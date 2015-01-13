// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.HelpDetailActivity;
import com.neuron.mytelkom.adapter.HelpAdapter;
import com.neuron.mytelkom.base.BaseFragment;
import com.neuron.mytelkom.model.HelpItem;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import org.apache.http.Header;
import org.json.JSONObject;

public class HelpFragment extends BaseFragment
{

    public static String FRAGMENT_TAG = "HelpFragment";
    private ProgressBar indicator;
    private ArrayList listHelp;
    private ListView lvHelp;
    private View viewError;

    public HelpFragment()
    {
    }

    private void getHelpData()
    {
        indicator.setVisibility(0);
        lvHelp.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("dataType", "HELP");
            jsonobject.put("dataSource", "");
            jsonobject.put("dataParameter", "");
            jsonobject.put("transactionID", "");
            jsonobject.put("statusCode", "");
            jsonobject.put("strMessage", "");
            String s = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final HelpFragment this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    lvHelp.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    indicator.setVisibility(8);
                    lvHelp.setVisibility(0);
                    viewError.setVisibility(8);
                    String s1 = new String(abyte0);
                    fetchResponse(s1);
                }

            
            {
                this$0 = HelpFragment.this;
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

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject.getString("rescode").equals("00"))
        {
            listHelp = HelpItem.getListHelp(jsonobject.getString("Result"));
            HelpAdapter helpadapter = new HelpAdapter(getActivity(), listHelp);
            lvHelp.setAdapter(helpadapter);
            return;
        }
        try
        {
            indicator.setVisibility(8);
            lvHelp.setVisibility(8);
            viewError.setVisibility(0);
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
        return;
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvHelp.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final HelpFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                HelpDetailActivity.toHelpItem(getActivity(), (HelpItem)listHelp.get(i));
            }

            
            {
                this$0 = HelpFragment.this;
                super();
            }
        });
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        getHelpData();
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        initializeRequest();
        initializeActions();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f03002c, viewgroup, false);
        lvHelp = (ListView)view.findViewById(0x7f0a00c4);
        indicator = (ProgressBar)view.findViewById(0x7f0a0065);
        viewError = view.findViewById(0x7f0a005b);
        return view;
    }





}
