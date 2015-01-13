// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TimePicker;
import android.widget.Toast;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.ConferenceItem;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Locale;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceParticipantActivity

public class CreateNewConferenceActivity extends BaseActivity
{
    public static final class ConferenceFormFlag extends Enum
    {

        private static final ConferenceFormFlag ENUM$VALUES[];
        public static final ConferenceFormFlag MODIFY;
        public static final ConferenceFormFlag NEW;

        public static ConferenceFormFlag valueOf(String s)
        {
            return (ConferenceFormFlag)Enum.valueOf(com/neuron/mytelkom/CreateNewConferenceActivity$ConferenceFormFlag, s);
        }

        public static ConferenceFormFlag[] values()
        {
            ConferenceFormFlag aconferenceformflag[] = ENUM$VALUES;
            int i = aconferenceformflag.length;
            ConferenceFormFlag aconferenceformflag1[] = new ConferenceFormFlag[i];
            System.arraycopy(aconferenceformflag, 0, aconferenceformflag1, 0, i);
            return aconferenceformflag1;
        }

        static 
        {
            NEW = new ConferenceFormFlag("NEW", 0);
            MODIFY = new ConferenceFormFlag("MODIFY", 1);
            ConferenceFormFlag aconferenceformflag[] = new ConferenceFormFlag[2];
            aconferenceformflag[0] = NEW;
            aconferenceformflag[1] = MODIFY;
            ENUM$VALUES = aconferenceformflag;
        }

        private ConferenceFormFlag(String s, int i)
        {
            super(s, i);
        }
    }


    public static String CONFERENCE_FLAG = "flag";
    public static String CONFERENCE_ITEM = "item";
    static final int DATE_DIALOG_ID = 0;
    static final int TIME_DIALOG = 999;
    private Button btnInputDataPeserta;
    private Button btnJam;
    private Button btnTanggal;
    private String conferenceName[] = {
        "Terjadwal", "Mulai Sekarang"
    };
    private String conferenceType[] = {
        "Scheduled", "Created"
    };
    private String durationHours[] = {
        "00", "01", "02", "03"
    };
    private String durationMinutes[] = {
        "00", "15", "30", "45"
    };
    private EditText edtJam;
    private EditText edtSubject;
    private EditText edtTanggal;
    private EditText edtTotal;
    ConferenceFormFlag flag;
    private int hourStart;
    private boolean isModify;
    ConferenceItem item;
    private LinearLayout lnConfereceTime;
    private android.app.DatePickerDialog.OnDateSetListener mDateSetListener;
    private int mDay;
    private int mMonth;
    private int mYear;
    private int minuteStart;
    private Spinner spnDurasiJam;
    private Spinner spnDurasiMenit;
    private Spinner spnJenis;
    private android.app.TimePickerDialog.OnTimeSetListener timePickerListenerGetTime;

    public CreateNewConferenceActivity()
    {
        isModify = false;
        mDateSetListener = new android.app.DatePickerDialog.OnDateSetListener() {

            final CreateNewConferenceActivity this$0;

            public void onDateSet(DatePicker datepicker, int i, int j, int k)
            {
                mYear = i;
                mMonth = j;
                mDay = k;
                updateDisplay();
            }

            
            {
                this$0 = CreateNewConferenceActivity.this;
                super();
            }
        };
        timePickerListenerGetTime = new android.app.TimePickerDialog.OnTimeSetListener() {

            final CreateNewConferenceActivity this$0;

            public void onTimeSet(TimePicker timepicker, int i, int j)
            {
                hourStart = i;
                minuteStart = j;
                String s = (new StringBuilder()).append(CreateNewConferenceActivity.pad(hourStart)).append(":").append(CreateNewConferenceActivity.pad(minuteStart)).toString();
                edtJam.setText(s);
            }

            
            {
                this$0 = CreateNewConferenceActivity.this;
                super();
            }
        };
    }

    private void initDate()
    {
        String as[] = Utils.dateConversion(item.getConferenceTime()).split("-");
        mYear = Integer.parseInt(as[0]);
        mMonth = Integer.parseInt(as[1]);
        mDay = Integer.parseInt(as[2]);
        updateDisplay();
    }

    private static String pad(int i)
    {
        if (i >= 10)
        {
            return String.valueOf(i);
        } else
        {
            return (new StringBuilder("0")).append(String.valueOf(i)).toString();
        }
    }

    public static void toCreateNewConferenceParticipant(Activity activity, ConferenceFormFlag conferenceformflag)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/CreateNewConferenceActivity);
        intent.putExtra(CONFERENCE_FLAG, conferenceformflag);
        activity.startActivityForResult(intent, 0);
    }

    public static void toUpdateConference(Activity activity, ConferenceFormFlag conferenceformflag, ConferenceItem conferenceitem)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/CreateNewConferenceActivity);
        intent.putExtra(CONFERENCE_FLAG, conferenceformflag);
        intent.putExtra(CONFERENCE_ITEM, conferenceitem);
        activity.startActivityForResult(intent, 0);
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
        edtTanggal.setText((new StringBuilder()).append(s).append("-").append(s1).append("-").append(s2));
    }

    protected void doCreateOrUpdateAction()
    {
        if (isModify)
        {
            item.setSubject(edtSubject.getText().toString().trim());
            item.setdHours(durationHours[spnDurasiJam.getSelectedItemPosition()]);
            item.setdMinutes(durationMinutes[spnDurasiMenit.getSelectedItemPosition()]);
            item.setConferenceHour(edtJam.getText().toString().trim());
            item.setConferenceTime(edtTanggal.getText().toString().trim());
            item.setMaxAttendee(Integer.parseInt(edtTotal.getText().toString().trim()));
            item.setTypeConf(conferenceType[spnJenis.getSelectedItemPosition()]);
            CreateNewConferenceParticipantActivity.toCreateNewConferenceParticipantActivity(this, item, ConferenceFormFlag.MODIFY);
            return;
        } else
        {
            ConferenceItem conferenceitem = new ConferenceItem();
            conferenceitem.setSubject(edtSubject.getText().toString().trim());
            conferenceitem.setdHours(durationHours[spnDurasiJam.getSelectedItemPosition()]);
            conferenceitem.setdMinutes(durationMinutes[spnDurasiMenit.getSelectedItemPosition()]);
            conferenceitem.setConferenceHour(edtJam.getText().toString().trim());
            conferenceitem.setConferenceTime(edtTanggal.getText().toString().trim());
            conferenceitem.setMaxAttendee(Integer.parseInt(edtTotal.getText().toString().trim()));
            conferenceitem.setTypeConf(conferenceType[spnJenis.getSelectedItemPosition()]);
            CreateNewConferenceParticipantActivity.toCreateNewConferenceParticipantActivity(this, item, ConferenceFormFlag.NEW);
            return;
        }
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        flag = (ConferenceFormFlag)getIntent().getSerializableExtra(CONFERENCE_FLAG);
        if (flag == ConferenceFormFlag.MODIFY)
        {
            isModify = true;
            item = (ConferenceItem)getIntent().getSerializableExtra(CONFERENCE_ITEM);
        }
    }

    public void initializeActions()
    {
        super.initializeActions();
        spnJenis.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {

            final CreateNewConferenceActivity this$0;

            public void onItemSelected(AdapterView adapterview, View view, int i, long l)
            {
                if (i == 1 && lnConfereceTime.getVisibility() == 0)
                {
                    lnConfereceTime.setVisibility(8);
                }
                if (i == 0 && lnConfereceTime.getVisibility() == 8)
                {
                    lnConfereceTime.setVisibility(0);
                }
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                this$0 = CreateNewConferenceActivity.this;
                super();
            }
        });
        btnInputDataPeserta.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceActivity this$0;

            public void onClick(View view)
            {
                String s = edtSubject.getText().toString().trim();
                String s1 = durationHours[spnDurasiJam.getSelectedItemPosition()];
                String s2 = durationMinutes[spnDurasiMenit.getSelectedItemPosition()];
                String s3 = edtJam.getText().toString().trim();
                String s4 = edtTanggal.getText().toString().trim();
                if (spnJenis.getSelectedItemPosition() == 1)
                {
                    if (s.equals("") || s1.equals("") || s2.equals(""))
                    {
                        Toast.makeText(CreateNewConferenceActivity.this, "Field harus terisi semua", 1).show();
                        return;
                    }
                    if (Integer.valueOf(edtTotal.getText().toString()).intValue() < 3)
                    {
                        Utils.showToast(CreateNewConferenceActivity.this, "Minimum total participant is 3");
                        return;
                    } else
                    {
                        doCreateOrUpdateAction();
                        return;
                    }
                }
                if (s.equals("") || s1.equals("") || s2.equals("") || s3.equals("") || s4.equals(""))
                {
                    Toast.makeText(CreateNewConferenceActivity.this, "Field harus terisi semua", 1).show();
                    return;
                }
                if (Integer.valueOf(edtTotal.getText().toString()).intValue() < 3)
                {
                    Utils.showToast(CreateNewConferenceActivity.this, "Minimum total participant is 3");
                    return;
                } else
                {
                    doCreateOrUpdateAction();
                    return;
                }
            }

            
            {
                this$0 = CreateNewConferenceActivity.this;
                super();
            }
        });
        btnJam.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceActivity this$0;

            public void onClick(View view)
            {
                showDialog(999);
            }

            
            {
                this$0 = CreateNewConferenceActivity.this;
                super();
            }
        });
        btnTanggal.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceActivity this$0;

            public void onClick(View view)
            {
                showDialog(0);
            }

            
            {
                this$0 = CreateNewConferenceActivity.this;
                super();
            }
        });
    }

    public void initializeViews()
    {
        super.initializeViews();
        btnJam = (Button)findViewById(0x7f0a000b);
        btnInputDataPeserta = (Button)findViewById(0x7f0a000f);
        btnTanggal = (Button)findViewById(0x7f0a0009);
        edtJam = (EditText)findViewById(0x7f0a000a);
        edtTanggal = (EditText)findViewById(0x7f0a0008);
        edtSubject = (EditText)findViewById(0x7f0a0005);
        edtTotal = (EditText)findViewById(0x7f0a000e);
        spnDurasiJam = (Spinner)findViewById(0x7f0a000c);
        spnDurasiMenit = (Spinner)findViewById(0x7f0a000d);
        spnJenis = (Spinner)findViewById(0x7f0a0006);
        lnConfereceTime = (LinearLayout)findViewById(0x7f0a0007);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 40 && intent.getStringExtra("status").equals("success"))
        {
            finish();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030002);
        getActionBar().setDisplayUseLogoEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(true);
        getActionBar().setIcon(0x7f020045);
        getActionBar().setTitle("");
        getActionBar().setHomeButtonEnabled(true);
        getActionBar().setDisplayHomeAsUpEnabled(true);
        initialiazeIntent();
        initializeViews();
        setToView();
        initializeActions();
    }

    protected Dialog onCreateDialog(int i)
    {
        String as[];
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return new DatePickerDialog(this, mDateSetListener, mYear, mMonth, mDay);

        case 999: 
            as = item.getConferenceHour().split(":");
            break;
        }
        return new TimePickerDialog(this, timePickerListenerGetTime, Integer.parseInt(as[0]), Integer.parseInt(as[1]), false);
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
        ArrayAdapter arrayadapter = new ArrayAdapter(this, 0x109000a, 0x1020014, conferenceName);
        spnJenis.setAdapter(arrayadapter);
        ArrayAdapter arrayadapter1 = new ArrayAdapter(this, 0x109000a, 0x1020014, durationHours);
        spnDurasiJam.setAdapter(arrayadapter1);
        ArrayAdapter arrayadapter2 = new ArrayAdapter(this, 0x109000a, 0x1020014, durationMinutes);
        spnDurasiMenit.setAdapter(arrayadapter2);
        if (!isModify) goto _L2; else goto _L1
_L1:
        String as[];
        int i;
        as = item.getDuration().split(":");
        i = 0;
_L3:
        int j;
        int k;
        if (i < durationHours.length)
        {
label0:
            {
                if (!as[0].equals(durationHours[i]))
                {
                    break label0;
                }
                spnDurasiJam.setSelection(i);
            }
        }
        j = 0;
_L4:
        if (j < durationMinutes.length)
        {
label1:
            {
                if (!as[1].equals(durationMinutes[j]))
                {
                    break label1;
                }
                spnDurasiMenit.setSelection(j);
            }
        }
        k = 0;
_L5:
        if (k < conferenceType.length)
        {
label2:
            {
                if (!conferenceType[k].toLowerCase(Locale.ENGLISH).equals(item.getConferenceState().toLowerCase(Locale.ENGLISH)))
                {
                    break label2;
                }
                spnJenis.setSelection(k);
            }
        }
        edtSubject.setText(item.getSubject());
        edtTotal.setText((new StringBuilder()).append(item.getListAttendees().size()).toString());
        edtJam.setText((new StringBuilder()).append(item.getConferenceHour()).toString());
        edtTanggal.setText(Utils.dateConversion(item.getConferenceTime()));
_L2:
        return;
        i++;
          goto _L3
        j++;
          goto _L4
        k++;
          goto _L5
    }




















}
