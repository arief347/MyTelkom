// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.neuron.mytelkom.utils.Utils;

// Referenced classes of package com.neuron.mytelkom:
//            RegisterActivity

class this._cls0
    implements android.view.r
{

    final RegisterActivity this$0;

    public void onClick(View view)
    {
        String s = RegisterActivity.access$0(RegisterActivity.this).getText().toString().trim();
        String s1 = RegisterActivity.access$1(RegisterActivity.this).getText().toString().trim();
        String s2 = RegisterActivity.access$2(RegisterActivity.this).getText().toString().trim();
        String s3 = RegisterActivity.access$3(RegisterActivity.this).getText().toString().trim();
        if (s.equals("") || s1.equals("") || s2.equals("") || s3.equals(""))
        {
            Utils.showToast(RegisterActivity.this, "Semua field harus terisi");
            return;
        } else
        {
            RegisterActivity.access$4(RegisterActivity.this, s, s1, s2, s3);
            return;
        }
    }

    ()
    {
        this$0 = RegisterActivity.this;
        super();
    }
}
