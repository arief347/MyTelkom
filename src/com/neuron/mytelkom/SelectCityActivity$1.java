// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

// Referenced classes of package com.neuron.mytelkom:
//            SelectCityActivity

class this._cls0
    implements android.widget.ckListener
{

    final SelectCityActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Intent intent = new Intent();
        intent.putExtra(SelectCityActivity.KEY_CITY_SELECTED, ((String)SelectCityActivity.access$0(SelectCityActivity.this).get(i)).toString());
        setResult(SelectCityActivity.RESULT_CODE, intent);
    }

    tener()
    {
        this$0 = SelectCityActivity.this;
        super();
    }
}
