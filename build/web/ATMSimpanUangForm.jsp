<%-- 
    Document   : ATMSimpanUangForm
    Created on : Apr 17, 2018, 7:30:49 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Simpan Uang ATM</title>
    </head>
    <body>
        <center>
            <h1>Form ATM Simpan Uang</h1>
            <form action="ATMSimpanUang.jsp" method="POST">
                <table>
                    <tr>
                        <td>Nominal Uang</td>
                        <td> : <input type="numer" name="uang"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
