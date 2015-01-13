// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import com.neuron.mytelkom.utils.Utils;

// Referenced classes of package com.neuron.mytelkom:
//            CreateNewConferenceActivity

class this._cls0
    implements android.view.vity._cls4
{

    final CreateNewConferenceActivity this$0;

    public void onClick(View view)
    {
        String s = CreateNewConferenceActivity.access$11(CreateNewConferenceActivity.this).getText().toString().trim();
        String s1 = CreateNewConferenceActivity.access$12(CreateNewConferenceActivity.this)[CreateNewConferenceActivity.access$13(CreateNewConferenceActivity.this).getSelectedItemPosition()];
        String s2 = CreateNewConferenceActivity.access$14(CreateNewConferenceActivity.this)[CreateNewConferenceActivity.access$15(CreateNewConferenceActivity.this).getSelectedItemPosition()];
        String s3 = CreateNewConferenceActivity.access$9(CreateNewConferenceActivity.this).getText().toString().trim();
        String s4 = CreateNewConferenceActivity.access$16(CreateNewConferenceActivity.this).getText().toString().trim();
        if (CreateNewConferenceActivity.access$17(CreateNewConferenceActivity.this).getSelectedItemPosition() == 1)
        {
            if (s.equals("") || s1.equals("") || s2.equals(""))
            {
                Toast.makeText(CreateNewConferenceActivity.this, "Field harus terisi semua", 1).show();
                return;
            }
            if (Integer.valueOf(CreateNewConferenceActivity.access$18(CreateNewConferenceActivity.this).getText().toString()).intValue() < 3)
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
        if (Integer.valueOf(CreateNewConferenceActivity.access$18(CreateNewConferenceActivity.this).getText().toString()).intValue() < 3)
        {
            Utils.showToast(CreateNewConferenceActivity.this, "Minimum total participant is 3");
            return;
        } else
        {
            doCreateOrUpdateAction();
            return;
        }
    }

    ()
    {
        this$0 = CreateNewConferenceActivity.this;
        super();
    }
}
