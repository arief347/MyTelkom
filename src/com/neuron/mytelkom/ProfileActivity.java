// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.User;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            UpdatePasswordActivity, EditProfileActivity

public class ProfileActivity extends BaseActivity
{

    private String KEY_USER;
    private Button btnUpdatePassword;
    private Button btnUpdateProfile;
    private ProgressBar indicator;
    private LinearLayout lnProfile;
    private TextView txtAlamat;
    private TextView txtEmail;
    private TextView txtName;
    private TextView txtNomorKontak;
    private TextView txtUsername;
    private User user;
    private View viewError;

    public ProfileActivity()
    {
        KEY_USER = "user_data";
    }

    private void requestProfile()
    {
        indicator.setVisibility(0);
        lnProfile.setVisibility(8);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomid", preference.getUsername());
            RequestParams requestparams = new RequestParams();
            requestparams.put("param", jsonobject.toString());
            asyncHttpClient.post("https://my.telkom.co.id/api/MTprofile.php?api=", requestparams, new AsyncHttpResponseHandler() {

                final ProfileActivity this$0;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    indicator.setVisibility(8);
                    lnProfile.setVisibility(8);
                    viewError.setVisibility(0);
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    Utils.printLog(new String(abyte0));
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = ProfileActivity.this;
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

    public static void toProfileActivity(Activity activity)
    {
        activity.startActivity(new Intent(activity, com/neuron/mytelkom/ProfileActivity));
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        Utils.printLog(s);
        indicator.setVisibility(8);
        lnProfile.setVisibility(0);
        viewError.setVisibility(8);
        try
        {
            JSONObject jsonobject = new JSONObject(s);
            if (jsonobject.optString("rescode").equals("00"))
            {
                JSONObject jsonobject1 = jsonobject.getJSONObject("resmsg");
                txtUsername.setText(jsonobject1.optString("username"));
                JSONObject jsonobject2 = jsonobject1.getJSONObject("result").getJSONObject("result");
                txtName.setText(jsonobject2.optString("full_name"));
                txtAlamat.setText((new StringBuilder(String.valueOf(jsonobject2.optString("address")))).append(" ").append(jsonobject2.optString("city")).toString());
                txtNomorKontak.setText(jsonobject2.optString("mobile1"));
                txtEmail.setText(jsonobject1.getJSONObject("resultDB").optString("entry_email"));
                user = new User();
                user.setAddress(jsonobject2.optString("address"));
                user.setBirthDay(jsonobject2.optString("birthdate"));
                user.setPlaceBday(jsonobject2.optString("birthplace"));
                user.setCity(jsonobject2.optString("city"));
                user.setCountry(jsonobject2.optString("country"));
                user.setEducation(jsonobject2.optString("education_level"));
                user.setFlexiNo(jsonobject2.optString("flexi_no"));
                user.setFullName(jsonobject2.optString("full_name"));
                user.setGender(jsonobject2.optString("gender"));
                user.setHobby(jsonobject2.optString("hobby"));
                user.setEmail(jsonobject2.optString("entry_email"));
                user.setMobilePhone(jsonobject2.optString("mobile1"));
                user.setMotherName(jsonobject2.optString("mother_maiden_name"));
                user.setOccupation(jsonobject2.optString("occupation"));
                user.setPersonalId(jsonobject2.optString("personal_id"));
                user.setPersonalIdType(jsonobject2.optString("personal_id_type"));
                user.setProvince(jsonobject2.optString("province"));
                user.setPostalCode(jsonobject2.getString("zip_code"));
                user.setUsername(preference.getUsername());
            }
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnUpdatePassword.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileActivity this$0;

            public void onClick(View view)
            {
                UpdatePasswordActivity.toUpdatePasswordActivity(ProfileActivity.this);
            }

            
            {
                this$0 = ProfileActivity.this;
                super();
            }
        });
        btnUpdateProfile.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileActivity this$0;

            public void onClick(View view)
            {
                EditProfileActivity.toEditProfileActivity(ProfileActivity.this, user);
            }

            
            {
                this$0 = ProfileActivity.this;
                super();
            }
        });
    }

    public void initializeViews()
    {
        super.initializeViews();
        txtName = (TextView)findViewById(0x7f0a0053);
        txtAlamat = (TextView)findViewById(0x7f0a0056);
        txtEmail = (TextView)findViewById(0x7f0a0055);
        txtNomorKontak = (TextView)findViewById(0x7f0a0057);
        txtUsername = (TextView)findViewById(0x7f0a0054);
        indicator = (ProgressBar)findViewById(0x7f0a005a);
        lnProfile = (LinearLayout)findViewById(0x7f0a0052);
        btnUpdatePassword = (Button)findViewById(0x7f0a0059);
        btnUpdateProfile = (Button)findViewById(0x7f0a0058);
        viewError = findViewById(0x7f0a005b);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 20)
        {
            requestProfile();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030010);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeViews();
        requestProfile();
        initializeActions();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f090004, menu);
        return true;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (asyncHttpClient != null)
        {
            asyncHttpClient.getHttpClient().getConnectionManager().shutdown();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag = true;
        menuitem.getItemId();
        JVM INSTR lookupswitch 2: default 36
    //                   16908332: 60
    //                   2131362048: 44;
           goto _L1 _L2 _L3
_L1:
        flag = super.onOptionsItemSelected(menuitem);
_L5:
        return flag;
_L3:
        if (indicator.getVisibility() == 0) goto _L5; else goto _L4
_L4:
        requestProfile();
        return flag;
_L2:
        finish();
        return flag;
    }




}
