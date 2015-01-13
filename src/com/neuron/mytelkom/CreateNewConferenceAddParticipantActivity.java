// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.neuron.mytelkom.base.BaseActivity;
import com.neuron.mytelkom.model.ConferenceAttendees;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceParticipantActivity

public class CreateNewConferenceAddParticipantActivity extends BaseActivity
{
    public static final class ParticipantFormType extends Enum
    {

        public static final ParticipantFormType ADD;
        public static final ParticipantFormType EDIT;
        private static final ParticipantFormType ENUM$VALUES[];

        public static ParticipantFormType valueOf(String s)
        {
            return (ParticipantFormType)Enum.valueOf(com/neuron/mytelkom/CreateNewConferenceAddParticipantActivity$ParticipantFormType, s);
        }

        public static ParticipantFormType[] values()
        {
            ParticipantFormType aparticipantformtype[] = ENUM$VALUES;
            int i = aparticipantformtype.length;
            ParticipantFormType aparticipantformtype1[] = new ParticipantFormType[i];
            System.arraycopy(aparticipantformtype, 0, aparticipantformtype1, 0, i);
            return aparticipantformtype1;
        }

        static 
        {
            EDIT = new ParticipantFormType("EDIT", 0);
            ADD = new ParticipantFormType("ADD", 1);
            ParticipantFormType aparticipantformtype[] = new ParticipantFormType[2];
            aparticipantformtype[0] = EDIT;
            aparticipantformtype[1] = ADD;
            ENUM$VALUES = aparticipantformtype;
        }

        private ParticipantFormType(String s, int i)
        {
            super(s, i);
        }
    }


    public static String KEY_ATTENDEE = "attendee";
    public static String KEY_POSITION = "posisi";
    public static String KEY_TYPE = "type";
    ConferenceAttendees attendees;
    private Button btnAddPeserta;
    private Button btnEdit;
    private Button btnHapus;
    private EditText edtEmail;
    private EditText edtName;
    private EditText edtNoHp;
    private LinearLayout lnEditParticipant;
    int position;
    ParticipantFormType type;

    public CreateNewConferenceAddParticipantActivity()
    {
        position = 0;
    }

    private void showDeleteDialog(ConferenceAttendees conferenceattendees)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("Konfirmasi");
        builder.setMessage((new StringBuilder("Anda yakin menghapus perserta ")).append(conferenceattendees.getName()).append(" dari conference ini?").toString()).setCancelable(false).setPositiveButton("Ya", new android.content.DialogInterface.OnClickListener() {

            final CreateNewConferenceAddParticipantActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                Intent intent = new Intent();
                intent.putExtra(CreateNewConferenceAddParticipantActivity.KEY_POSITION, position);
                setResult(CreateNewConferenceParticipantActivity.DELETE_PARTICIPANT_RESULT_CODE, intent);
                finish();
            }

            
            {
                this$0 = CreateNewConferenceAddParticipantActivity.this;
                super();
            }
        }).setNegativeButton("Tidak", new android.content.DialogInterface.OnClickListener() {

            final CreateNewConferenceAddParticipantActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                this$0 = CreateNewConferenceAddParticipantActivity.this;
                super();
            }
        });
        builder.create().show();
    }

    public static void toCreateNewConferenceAddParticipantActivity(Activity activity, ParticipantFormType participantformtype)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/CreateNewConferenceAddParticipantActivity);
        intent.putExtra(KEY_TYPE, participantformtype);
        activity.startActivityForResult(intent, CreateNewConferenceParticipantActivity.ADD_PARTICIPANT_REQUEST_CODE);
    }

    public static void toCreateNewConferenceAddParticipantActivity(Activity activity, ParticipantFormType participantformtype, ConferenceAttendees conferenceattendees, int i)
    {
        Intent intent = new Intent(activity, com/neuron/mytelkom/CreateNewConferenceAddParticipantActivity);
        intent.putExtra(KEY_TYPE, participantformtype);
        intent.putExtra(KEY_ATTENDEE, conferenceattendees);
        intent.putExtra(KEY_POSITION, i);
        activity.startActivityForResult(intent, CreateNewConferenceParticipantActivity.ADD_PARTICIPANT_REQUEST_CODE);
    }

    public void initialiazeIntent()
    {
        super.initialiazeIntent();
        type = (ParticipantFormType)getIntent().getSerializableExtra(KEY_TYPE);
        attendees = (ConferenceAttendees)getIntent().getSerializableExtra(KEY_ATTENDEE);
        position = getIntent().getIntExtra(KEY_POSITION, 0);
    }

    public void initializeActions()
    {
        super.initializeActions();
        btnAddPeserta.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceAddParticipantActivity this$0;

            public void onClick(View view)
            {
                String s = edtName.getText().toString().trim();
                String s1 = edtEmail.getText().toString().trim();
                String s2 = edtNoHp.getText().toString().trim();
                ConferenceAttendees conferenceattendees = new ConferenceAttendees();
                conferenceattendees.setName(s);
                conferenceattendees.setEmail(s1);
                conferenceattendees.setPhone(s2);
                Intent intent = new Intent();
                intent.putExtra(CreateNewConferenceParticipantActivity.NEW_USER, conferenceattendees);
                setResult(CreateNewConferenceParticipantActivity.ADD_PARTICIPANT_RESULT_CODE, intent);
                finish();
            }

            
            {
                this$0 = CreateNewConferenceAddParticipantActivity.this;
                super();
            }
        });
        btnEdit.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceAddParticipantActivity this$0;

            public void onClick(View view)
            {
                String s = edtName.getText().toString().trim();
                String s1 = edtEmail.getText().toString().trim();
                String s2 = edtNoHp.getText().toString().trim();
                ConferenceAttendees conferenceattendees = new ConferenceAttendees();
                conferenceattendees.setName(s);
                conferenceattendees.setEmail(s1);
                conferenceattendees.setPhone(s2);
                Intent intent = new Intent();
                intent.putExtra(CreateNewConferenceParticipantActivity.EDIT_USER, conferenceattendees);
                intent.putExtra(CreateNewConferenceAddParticipantActivity.KEY_POSITION, position);
                setResult(CreateNewConferenceParticipantActivity.EDIT_PARTICIPANT_RESULT_CODE, intent);
                finish();
            }

            
            {
                this$0 = CreateNewConferenceAddParticipantActivity.this;
                super();
            }
        });
        btnHapus.setOnClickListener(new android.view.View.OnClickListener() {

            final CreateNewConferenceAddParticipantActivity this$0;

            public void onClick(View view)
            {
                showDeleteDialog(attendees);
            }

            
            {
                this$0 = CreateNewConferenceAddParticipantActivity.this;
                super();
            }
        });
    }

    public void initializeViews()
    {
        super.initializeViews();
        edtEmail = (EditText)findViewById(0x7f0a0011);
        edtName = (EditText)findViewById(0x7f0a0010);
        edtNoHp = (EditText)findViewById(0x7f0a0012);
        btnAddPeserta = (Button)findViewById(0x7f0a0013);
        btnEdit = (Button)findViewById(0x7f0a0016);
        btnHapus = (Button)findViewById(0x7f0a0015);
        lnEditParticipant = (LinearLayout)findViewById(0x7f0a0014);
        if (type == ParticipantFormType.EDIT)
        {
            lnEditParticipant.setVisibility(0);
            btnAddPeserta.setVisibility(8);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030003);
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
        if (type == ParticipantFormType.EDIT)
        {
            edtEmail.setText(attendees.getEmail());
            edtName.setText(attendees.getName());
            edtNoHp.setText(attendees.getPhone());
        }
    }





}
