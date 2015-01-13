// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.base;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.gson.Gson;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.utils.Constant;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom.base:
//            OnInitialiazeView

public class BaseFragment extends Fragment
    implements OnInitialiazeView
{

    public AsyncHttpClient asyncHttpClient;
    public Gson gson;
    public Preference preference;

    public BaseFragment()
    {
    }

    public void deleteProduct(String s)
    {
        final ProgressDialog dialog = new ProgressDialog(getActivity());
        dialog.setMessage("Please wait...");
        dialog.show();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("dataType", "DELETE_PORTFOLIO");
            jsonobject.put("dataSource", "");
            jsonobject.put("transactionID", "");
            jsonobject.put("statusCode", "");
            jsonobject.put("strMessage", "");
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("username", preference.getUsername());
            jsonobject1.put("prodno", s);
            jsonobject.put("dataParameter", jsonobject1);
            String s1 = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", s1);
            asyncHttpClient.post("https://my.telkom.co.id/api/mobile_requesthandler.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final BaseFragment this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                    Log.d(Constant.APP_TAG, "Error Delete Product");
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    String s2;
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    s2 = new String(abyte0);
                    Utils.printLog(s2);
                    JSONObject jsonobject2;
                    jsonobject2 = new JSONObject(s2);
                    if (!jsonobject2.getString("rescode").equals("00"))
                    {
                        break MISSING_BLOCK_LABEL_143;
                    }
                    JSONObject jsonobject3 = new JSONObject(jsonobject2.getString("Result"));
                    if (jsonobject3.getString("rescode").equals("00"))
                    {
                        Utils.showToast(getActivity(), jsonobject3.getString("resmsg"));
                        getActivity().finish();
                        return;
                    }
                    try
                    {
                        Utils.showToast(getActivity(), jsonobject2.getString("resmsg"));
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Utils.printLog(exception1.getMessage());
                    }
                    return;
                    Utils.showToast(getActivity(), jsonobject2.getString("resmsg"));
                    return;
                }

            
            {
                this$0 = BaseFragment.this;
                dialog = progressdialog;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            Log.d(Constant.APP_TAG, exception.getMessage());
        }
    }

    public void fetchResponse(String s)
    {
    }

    public void initialiazeIntent()
    {
    }

    public void initializeActions()
    {
    }

    public void initializeLibs()
    {
    }

    public void initializeRequest()
    {
    }

    public void initializeViews()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        preference = new Preference(getActivity());
        asyncHttpClient = new AsyncHttpClient();
        asyncHttpClient.setTimeout(0x493e0);
        gson = new Gson();
    }

    public void setToView()
    {
    }

    public void showDeleteDialog(String s, final String productId)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        builder.setTitle("Hapus Produk");
        builder.setMessage((new StringBuilder("Apakah anda yakin akan menghapus produk (")).append(s).append(") dari portofolio anda?").toString()).setCancelable(false).setPositiveButton("Ya", new android.content.DialogInterface.OnClickListener() {

            final BaseFragment this$0;
            private final String val$productId;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                deleteProduct(productId);
            }

            
            {
                this$0 = BaseFragment.this;
                productId = s;
                super();
            }
        }).setNegativeButton("Tidak", new android.content.DialogInterface.OnClickListener() {

            final BaseFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                this$0 = BaseFragment.this;
                super();
            }
        });
        builder.create().show();
    }
}
