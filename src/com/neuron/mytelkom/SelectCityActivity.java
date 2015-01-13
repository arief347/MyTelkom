// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            SampleActivity

public class SelectCityActivity extends BaseActivity
{
    private class LoadCityData extends AsyncTask
    {

        final SelectCityActivity this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient String doInBackground(Void avoid[])
        {
            String s = preference.getCity();
            JSONObject jsonobject;
            Iterator iterator;
            jsonobject = new JSONObject(s);
            iterator = jsonobject.keys();
_L2:
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_96;
            }
            JSONObject jsonobject1 = new JSONObject(jsonobject.get((String)iterator.next()).toString());
            listCity.add(jsonobject1.getString("LCOM"));
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            Utils.printLog(exception.getMessage());
            return null;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            super.onPostExecute(s);
            ArrayAdapter arrayadapter = new ArrayAdapter(SelectCityActivity.this, 0x1090003, 0x102000a, listCity);
            lvSelectCity.setAdapter(arrayadapter);
        }

        private LoadCityData()
        {
            this$0 = SelectCityActivity.this;
            super();
        }

        LoadCityData(LoadCityData loadcitydata)
        {
            this();
        }
    }


    public static String KEY_CITY_SELECTED = "city";
    public static int REQUEST_CODE = 20;
    public static int RESULT_CODE = 30;
    private ArrayList listCity;
    private ListView lvSelectCity;

    public SelectCityActivity()
    {
    }

    public static void toSelectCity(Activity activity)
    {
        activity.startActivityForResult(new Intent(activity, com/neuron/mytelkom/SampleActivity), REQUEST_CODE);
    }

    public void initializeActions()
    {
        super.initializeActions();
        lvSelectCity.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SelectCityActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Intent intent = new Intent();
                intent.putExtra(SelectCityActivity.KEY_CITY_SELECTED, ((String)listCity.get(i)).toString());
                setResult(SelectCityActivity.RESULT_CODE, intent);
            }

            
            {
                this$0 = SelectCityActivity.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listCity = new ArrayList();
    }

    public void initializeRequest()
    {
        super.initializeRequest();
        (new LoadCityData(null)).execute(new Void[0]);
    }

    public void initializeViews()
    {
        super.initializeViews();
        lvSelectCity = (ListView)findViewById(0x7f0a0064);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030013);
        getActionBar().setBackgroundDrawable(new ColorDrawable(0xffff0000));
        getActionBar().setLogo(null);
        getActionBar().setIcon(null);
        getActionBar().setDisplayShowTitleEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        getActionBar().setTitle(Html.fromHtml("<font color=white>Select City</font>"));
        initializeViews();
        initializeRequest();
        setToView();
        initializeActions();
    }

    public void setToView()
    {
        super.setToView();
    }



}
