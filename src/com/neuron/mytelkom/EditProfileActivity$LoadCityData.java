// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.neuron.mytelkom;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import com.neuron.mytelkom.utils.Preference;
import com.neuron.mytelkom.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.neuron.mytelkom:
//            EditProfileActivity

class this._cls0 extends AsyncTask
{

    ProgressDialog dialog;
    final EditProfileActivity this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient String doInBackground(Void avoid[])
    {
        String s = preference.getCity();
        JSONObject jsonobject;
        Iterator iterator;
        jsonobject = new JSONObject(s);
        iterator = jsonobject.keys();
_L3:
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        dialog.dismiss();
        return null;
_L2:
        JSONObject jsonobject1 = new JSONObject(jsonobject.get((String)iterator.next()).toString());
        EditProfileActivity.access$4(EditProfileActivity.this).add(jsonobject1.getString("LCOM"));
          goto _L3
        Exception exception;
        exception;
        Utils.printLog(exception.getMessage());
          goto _L1
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        super.onPostExecute(s);
        dialog.dismiss();
        EditProfileActivity.access$5(EditProfileActivity.this);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        dialog = new ProgressDialog(EditProfileActivity.this);
        dialog.setTitle("");
        dialog.setMessage("Harap tunggu...");
        dialog.show();
    }

    ()
    {
        this$0 = EditProfileActivity.this;
        super();
    }
}
