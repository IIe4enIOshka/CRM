package com.CRM;

import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class DateNow {
    public static String getDate(){
        Date dateNow = new Date();
        SimpleDateFormat formatForDateNow = new SimpleDateFormat("yyyy-MM-dd");
        return formatForDateNow.format(dateNow);
    }
}
