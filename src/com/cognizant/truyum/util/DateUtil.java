package com.cognizant.truyum.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static Date convertToDate(String date) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("dd/mm/yyyy");
            format.setLenient(false);
            return format.parse(date);// String to date
        } catch (ParseException e) {
            System.out.println("Date/Format went wrong");
        }
        return null;// will not be executed/never executed

    }

}
