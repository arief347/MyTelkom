// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.neuron.mytelkom.utils.Utils;

// Referenced classes of package com.neuron.mytelkom:
//            ForgotPasswordActivity

class this._cls0
    implements android.view.vity._cls1
{

    final ForgotPasswordActivity this$0;

    public void onClick(View view)
    {
        String s = ForgotPasswordActivity.access$0(ForgotPasswordActivity.this).getText().toString().trim();
        if (s.equals(""))
        {
            Utils.showToast(ForgotPasswordActivity.this, "Field can not be blank");
            return;
        } else
        {
            ForgotPasswordActivity.access$1(ForgotPasswordActivity.this, s);
            return;
        }
    }

    ()
    {
        this$0 = ForgotPasswordActivity.this;
        super();
    }
}
