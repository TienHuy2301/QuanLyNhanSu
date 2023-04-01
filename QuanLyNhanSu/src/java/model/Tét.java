package model;

import model.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Tét {

    public static void main(String[] args) throws ParseException {
        String a = "21/03/2023 09:29:58";
        String b = "23/12/2023 10:31:48";

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

        Date c = null;
        Date d = null;

        c = sdf.parse(a);
        d = sdf.parse(b);

        long diff = d.getTime() - c.getTime();

        long diffSecond = diff / 1000 % 60;
        long diffMinutes = diff / (60 * 1000) % 60;
        long diffHours = diff / (60 * 60 * 1000) % 24;
        long diffDays = diff / (24 * 60 * 60 * 1000);

        System.out.print(diffDays + " days, ");
        System.out.print(diffHours + " hours, ");
        System.out.print(diffMinutes + " minutes, ");
        System.out.print(diffSecond + " seconds.");

    }
}
