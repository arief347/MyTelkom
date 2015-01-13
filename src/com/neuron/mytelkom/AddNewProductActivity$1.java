// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.text.Editable;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.neuron.mytelkom.utils.Utils;

// Referenced classes of package com.neuron.mytelkom:
//            AddNewProductActivity

class this._cls0
    implements android.view.vity._cls1
{

    final AddNewProductActivity this$0;

    public void onClick(View view)
    {
        if (AddNewProductActivity.access$0(AddNewProductActivity.this).isChecked())
        {
            if (AddNewProductActivity.access$1(AddNewProductActivity.this).getText().toString().equals(""))
            {
                Utils.showToast(AddNewProductActivity.this, "Field tidak boleh kosong");
                return;
            } else
            {
                initializeRequest();
                return;
            }
        } else
        {
            Utils.showToast(AddNewProductActivity.this, "Anda harus menyetujui semua syarat dan ketentuan yang ada");
            return;
        }
    }

    ()
    {
        this$0 = AddNewProductActivity.this;
        super();
    }
}
