// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.webkit.WebView;
import android.widget.TextView;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.HelpItem;

public class HelpDetailActivity extends BaseActivity
{

    public static String HELP_KEY = "HelpItem";
    private HelpItem helpItem;
    private TextView txtTitle;
    private WebView webContent;

    public HelpDetailActivity()
    {
    }

    public static void toHelpItem(Activity activity, HelpItem helpitem)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/HelpDetailActivity);
        intent.putExtra(HELP_KEY, helpitem);
        activity.startActivityForResult(intent, 0);
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        helpItem = (HelpItem)getIntent().getSerializableExtra(HELP_KEY);
    }

    public void initializeViews()
    {
        super.initializeViews();
        txtTitle = (TextView)findViewById(0x7f0a0029);
        webContent = (WebView)findViewById(0x7f0a002a);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030006);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeViews();
        initialiazeIntent();
        setToView();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void setToView()
    {
        super.setToView();
        txtTitle.setText(helpItem.getTitle());
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            webContent.setBackgroundColor(0);
            webContent.setLayerType(1, null);
        } else
        {
            webContent.setBackgroundColor(0);
        }
        webContent.loadDataWithBaseURL(null, helpItem.getContent(), "text/html", "UTF-8", null);
    }

}
