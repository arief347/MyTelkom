// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.neuron.mytelkom.utils.Utils;

// Referenced classes of package com.neuron.mytelkom:
//            LoginActivity

class this._cls0
    implements android.view.ener
{

    final LoginActivity this$0;

    public void onClick(View view)
    {
        String s = LoginActivity.access$0(LoginActivity.this).getText().toString().trim();
        String s1 = LoginActivity.access$1(LoginActivity.this).getText().toString().trim();
        if (s.equals("") || s1.equals(""))
        {
            Utils.showToast(LoginActivity.this, "Fields can not be blank");
            return;
        } else
        {
            requestLogin(s, s1);
            return;
        }
    }

    ()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
