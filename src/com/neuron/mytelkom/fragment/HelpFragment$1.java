// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom.fragment;

import android.view.View;
import android.widget.AdapterView;
import com.neuron.mytelkom.HelpDetailActivity;
import com.neuron.mytelkom.model.HelpItem;
import java.util.ArrayList;

// Referenced classes of package com.neuron.mytelkom.fragment:
//            HelpFragment

class this._cls0
    implements android.widget.temClickListener
{

    final HelpFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        HelpDetailActivity.toHelpItem(getActivity(), (HelpItem)HelpFragment.access$0(HelpFragment.this).get(i));
    }

    er()
    {
        this$0 = HelpFragment.this;
        super();
    }
}
