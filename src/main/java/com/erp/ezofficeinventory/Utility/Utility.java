package com.erp.ezofficeinventory.Utility;
import java.io.StringWriter;

import org.springframework.stereotype.Component;

import java.io.PrintWriter;

@Component("utility")
public class Utility {
    public static String getStackTrace(Throwable t) {
        String result = null;

        try ( StringWriter stringWriter = new StringWriter();  PrintWriter printWriter = new PrintWriter(stringWriter);) {
            t.printStackTrace(printWriter);
            result = stringWriter.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }
}
