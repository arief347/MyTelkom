// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.User;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.Header;
import org.json.JSONObject;

public class EditProfileActivity extends BaseActivity
{
    class LoadCityData extends AsyncTask
    {

        ProgressDialog dialog;
        final EditProfileActivity this$0;

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
_L3:
            boolean flag = iterator.hasNext();
            if (flag) goto _L2; else goto _L1
_L1:
            dialog.dismiss();
            return null;
_L2:
            JSONObject jsonobject1 = new JSONObject(jsonobject.get((String)iterator.next()).toString());
            listCity.add(jsonobject1.getString("LCOM"));
              goto _L3
            Exception exception;
            exception;
            Utils.printLog(exception.getMessage());
              goto _L1
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            super.onPostExecute(s);
            dialog.dismiss();
            bindDataToView();
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            dialog = new ProgressDialog(EditProfileActivity.this);
            dialog.setTitle("");
            dialog.setMessage("Harap tunggu...");
            dialog.show();
        }

        LoadCityData()
        {
            this$0 = EditProfileActivity.this;
            super();
        }
    }


    static final int DATE_DIALOG_ID;
    public static String KEY_USER = "user";
    private AutoCompleteTextView auKota;
    private Button btnPilihTanggal;
    private Button btnSubmit;
    private EditText edtAlamat;
    private EditText edtIbuKandung;
    private EditText edtKodePos;
    private EditText edtKotaKelahiran;
    private EditText edtMobilePhone;
    private EditText edtNamaLengkap;
    private EditText edtNoFlexi;
    private EditText edtNoIdentitas;
    private EditText edtPropinsi;
    private EditText edtTglLahir;
    public String education[] = {
        "--Pilih--", "Tidak Tamat SD", "SD (atau sederajat)", "SLTP (atau sederajat)", "SLTA (atau sederajat)", "D1/D2/D3", "S1", "S2/S3"
    };
    public String hobby[] = {
        "--Pilih--", "Kesehatan dan Kebugaran", "Bisnis dan Dunia Usaha", "Rumah dan Keluarga", "Olah Raga", "Wisata", "Rohani", "Pengelolaan Keuangan", "Hiburan (Musik/Film)", "Komputer dan Internet", 
        "Multilevel Marketing", "Otomotif", "Lain-lain"
    };
    public String identityType[] = {
        "--Pilih--", "KTP", "SIM", "Passport", "Lain-lain"
    };
    private ArrayList listCity;
    private android.app.DatePickerDialog.OnDateSetListener mDateSetListener;
    private int mDay;
    private int mMonth;
    private int mYear;
    public String pekerjaan[] = {
        "--Pilih--", "Pelajar/Mahasiswa", "PNS/TNK/POLRI", "BUMN/BUMD", "Wiraswasta", "Pensiunan/Purnawirawan", "Dokter", "Petani/Nelayan/Montir", "Notari/Pengacara/Konsultan", "Lain-lainnya"
    };
    private RadioButton rbMan;
    private RadioGroup rbSex;
    private RadioButton rbWoman;
    private Spinner spnHobby;
    private Spinner spnIdentitas;
    private Spinner spnPendidikan;
    private Spinner spnProfesi;
    public User user;

    public EditProfileActivity()
    {
        listCity = null;
        mDateSetListener = new android.app.DatePickerDialog.OnDateSetListener() {

            final EditProfileActivity this$0;

            public void onDateSet(DatePicker datepicker, int i, int j, int k)
            {
                mYear = i;
                mMonth = j;
                mDay = k;
                updateDisplay();
            }

            
            {
                this$0 = EditProfileActivity.this;
                super();
            }
        };
    }

    private void bindDataToView()
    {
        ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x1090003, 0x1020014, listCity);
        auKota.setAdapter(arrayadapter);
        ArrayAdapter arrayadapter1 = new ArrayAdapter(this, 0x109000a, 0x1020014, identityType);
        spnIdentitas.setAdapter(arrayadapter1);
        Spinner spinner = spnIdentitas;
        String s;
        ArrayAdapter arrayadapter2;
        Spinner spinner1;
        String s1;
        ArrayAdapter arrayadapter3;
        Spinner spinner2;
        String s2;
        ArrayAdapter arrayadapter4;
        Spinner spinner3;
        String s3;
        if (user.getPersonalIdType().equals(""))
        {
            s = "0";
        } else
        {
            s = user.getPersonalIdType();
        }
        spinner.setSelection(Integer.parseInt(s));
        arrayadapter2 = new ArrayAdapter(this, 0x109000a, 0x1020014, hobby);
        spnHobby.setAdapter(arrayadapter2);
        spinner1 = spnHobby;
        if (user.getHobby().equals(""))
        {
            s1 = "0";
        } else
        {
            s1 = user.getHobby();
        }
        spinner1.setSelection(Integer.parseInt(s1));
        arrayadapter3 = new ArrayAdapter(this, 0x109000a, 0x1020014, education);
        spnPendidikan.setAdapter(arrayadapter3);
        spinner2 = spnPendidikan;
        if (user.getEducation().equals(""))
        {
            s2 = "0";
        } else
        {
            s2 = user.getEducation();
        }
        spinner2.setSelection(Integer.parseInt(s2));
        arrayadapter4 = new ArrayAdapter(this, 0x109000a, 0x1020014, pekerjaan);
        spnProfesi.setAdapter(arrayadapter4);
        spinner3 = spnProfesi;
        if (user.getOccupation().equals(""))
        {
            s3 = "0";
        } else
        {
            s3 = user.getOccupation();
        }
        spinner3.setSelection(Integer.parseInt(s3));
        edtAlamat.setText(user.getAddress());
        edtIbuKandung.setText(user.getMotherName());
        edtKodePos.setText(user.getPostalCode());
        auKota.setText(user.getCity());
        edtKotaKelahiran.setText(user.getPlaceBday());
        edtMobilePhone.setText(user.getMobilePhone());
        edtNamaLengkap.setText(user.getFullName());
        edtNoFlexi.setText(user.getFlexiNo());
        edtNoIdentitas.setText(user.getPersonalId());
        edtPropinsi.setText(user.getProvince());
        edtTglLahir.setText(Utils.dateConversion(user.getBirthDay()));
        if (user.getGender().equals("L"))
        {
            rbMan.setChecked(true);
            rbWoman.setChecked(false);
            return;
        } else
        {
            rbMan.setChecked(false);
            rbWoman.setChecked(true);
            return;
        }
    }

    private void initDate()
    {
        String as[] = Utils.dateConversion(user.getBirthDay()).split("-");
        mYear = Integer.parseInt(as[0]);
        mMonth = Integer.parseInt(as[1]);
        mDay = Integer.parseInt(as[2]);
        updateDisplay();
    }

    public static void toEditProfileActivity(Activity activity, User user1)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/EditProfileActivity);
        intent.putExtra(KEY_USER, user1);
        activity.startActivityForResult(intent, 20);
    }

    private void updateDisplay()
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
        edtTglLahir.setText((new StringBuilder()).append(s).append("-").append(s1).append("-").append(s2));
    }

    public void fetchResponse(String s)
    {
        super.fetchResponse(s);
        Utils.printLog(s);
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject(s);
            if (jsonobject.getString("rescode").equals("00"))
            {
                Utils.showToast(this, "Update Profile Berhasil");
                setResult(20, new Intent());
                finish();
                return;
            }
        }
        catch (Exception exception)
        {
            return;
        }
        Utils.showToast(this, jsonobject.getString("resmsg"));
        return;
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        user = (User)getIntent().getSerializableExtra(KEY_USER);
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnPilihTanggal.setOnClickListener(new android.view.View.OnClickListener() {

            final EditProfileActivity this$0;

            public void onClick(View view)
            {
                showDialog(0);
            }

            
            {
                this$0 = EditProfileActivity.this;
                super();
            }
        });
        btnSubmit.setOnClickListener(new android.view.View.OnClickListener() {

            final EditProfileActivity this$0;

            public void onClick(View view)
            {
                updateProfileData();
            }

            
            {
                this$0 = EditProfileActivity.this;
                super();
            }
        });
    }

    public void initializeLibs()
    {
        super.initializeLibs();
        listCity = new ArrayList();
    }

    public void initializeViews()
    {
        super.initializeViews();
        edtAlamat = (EditText)findViewById(0x7f0a0035);
        edtIbuKandung = (EditText)findViewById(0x7f0a002c);
        edtKodePos = (EditText)findViewById(0x7f0a0038);
        auKota = (AutoCompleteTextView)findViewById(0x7f0a0036);
        edtKotaKelahiran = (EditText)findViewById(0x7f0a002f);
        edtMobilePhone = (EditText)findViewById(0x7f0a003a);
        edtNamaLengkap = (EditText)findViewById(0x7f0a002b);
        edtNoFlexi = (EditText)findViewById(0x7f0a0039);
        edtNoIdentitas = (EditText)findViewById(0x7f0a0034);
        edtPropinsi = (EditText)findViewById(0x7f0a0037);
        edtTglLahir = (EditText)findViewById(0x7f0a002d);
        rbWoman = (RadioButton)findViewById(0x7f0a0032);
        rbMan = (RadioButton)findViewById(0x7f0a0031);
        rbSex = (RadioGroup)findViewById(0x7f0a0030);
        spnHobby = (Spinner)findViewById(0x7f0a003c);
        spnIdentitas = (Spinner)findViewById(0x7f0a0033);
        spnPendidikan = (Spinner)findViewById(0x7f0a003b);
        spnProfesi = (Spinner)findViewById(0x7f0a003d);
        btnSubmit = (Button)findViewById(0x7f0a003e);
        btnPilihTanggal = (Button)findViewById(0x7f0a002e);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030007);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initializeLibs();
        initializeViews();
        initialiazeIntent();
        setToView();
        initializeActions();
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return new DatePickerDialog(this, mDateSetListener, mYear, mMonth, mDay);
        }
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
        initDate();
        (new LoadCityData()).execute(new Void[0]);
    }

    protected void updateProfileData()
    {
        String s = edtNamaLengkap.getText().toString().trim();
        String s1 = edtIbuKandung.getText().toString().trim();
        String as[] = edtTglLahir.getText().toString().trim().split("-");
        String s2 = (new StringBuilder(String.valueOf(as[2]))).append("/").append(as[1]).append("/").append(as[0]).toString();
        String s3 = edtKotaKelahiran.getText().toString().trim();
        String s4 = edtNoIdentitas.getText().toString().trim();
        String s5 = edtAlamat.getText().toString().trim();
        String s6 = auKota.getText().toString().trim();
        String s7 = edtPropinsi.getText().toString().trim();
        String s8 = edtKodePos.getText().toString().trim();
        String s9 = edtNoFlexi.getText().toString().trim();
        String s10 = edtMobilePhone.getText().toString().trim();
        String s11 = "";
        if (rbMan.isChecked())
        {
            s11 = "L";
        }
        if (rbWoman.isChecked())
        {
            s11 = "P";
        }
        String s12 = String.valueOf(spnIdentitas.getSelectedItemPosition());
        String s13 = String.valueOf(spnPendidikan.getSelectedItemPosition());
        String s14 = String.valueOf(spnHobby.getSelectedItemPosition());
        String s15 = String.valueOf(spnProfesi.getSelectedItemPosition());
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("telkomid", preference.getUsername());
            jsonobject.put("fullname", s);
            jsonobject.put("identity_id", s4);
            jsonobject.put("mothername", s1);
            jsonobject.put("identity_type", s12);
            jsonobject.put("gender", s11);
            jsonobject.put("bod", s2);
            jsonobject.put("bodplace", s3);
            jsonobject.put("address", s5);
            jsonobject.put("city", s6);
            jsonobject.put("province", s7);
            jsonobject.put("postcode", s8);
            jsonobject.put("mobilephone", s10);
            jsonobject.put("flexi", s9);
            jsonobject.put("user_education", s13);
            jsonobject.put("user_interest", s14);
            jsonobject.put("user_work", s15);
            String s16 = jsonobject.toString();
            RequestParams requestparams = new RequestParams();
            Utils.printLog(s16);
            requestparams.put("param", s16);
            Utils.printLog(requestparams.toString());
            final ProgressDialog dialog = new ProgressDialog(this);
            dialog.setTitle("Update Profile");
            dialog.setMessage("Harap Tunggu...");
            dialog.setCancelable(true);
            dialog.show();
            AsyncHttpClient asynchttpclient = asyncHttpClient;
            AsyncHttpResponseHandler asynchttpresponsehandler = new AsyncHttpResponseHandler() {

                final EditProfileActivity this$0;
                private final ProgressDialog val$dialog;

                public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                {
                    super.onFailure(i, aheader, abyte0, throwable);
                    dialog.dismiss();
                }

                public void onSuccess(int i, Header aheader[], byte abyte0[])
                {
                    super.onSuccess(i, aheader, abyte0);
                    dialog.dismiss();
                    fetchResponse(new String(abyte0));
                }

            
            {
                this$0 = EditProfileActivity.this;
                dialog = progressdialog;
                super();
            }
            };
            asynchttpclient.post("https://my.telkom.co.id/api/MTprofileUpdate.php?api=", requestparams, asynchttpresponsehandler);
            return;
        }
        catch (Exception exception)
        {
            Utils.printLog(exception.getMessage());
        }
    }







}
