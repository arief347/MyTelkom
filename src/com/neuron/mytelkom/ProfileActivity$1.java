// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.neuron.mytelkom.utils.Utils;
import org.apache.http.Header;

// Referenced classes of package com.neuron.mytelkom:
//            ProfileActivity

class seHandler extends AsyncHttpResponseHandler
{

    final ProfileActivity this$0;

    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
    {
        super.onFailure(i, aheader, abyte0, throwable);
        ProfileActivity.access$0(ProfileActivity.this).setVisibility(8);
        ProfileActivity.access$1(ProfileActivity.this).setVisibility(8);
        ProfileActivity.access$2(ProfileActivity.this).setVisibility(0);
    }

    public void onSuccess(int i, Header aheader[], byte abyte0[])
    {
        super.onSuccess(i, aheader, abyte0);
        Utils.printLog(new String(abyte0));
        fetchResponse(new String(abyte0));
    }

    seHandler()
    {
        this$0 = ProfileActivity.this;
        super();
    }
}
