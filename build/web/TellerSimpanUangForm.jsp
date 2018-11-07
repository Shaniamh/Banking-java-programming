<%-- 
    Document   : TellerSimpanUangForm
    Created on : Apr 17, 2018, 6:42:00 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Uang</title>
    </head>
    <body>
        <center>
            <h1>Form Teller Simpan Uang</h1>
            <form action="TellerSimpanUang.jsp" method="POST">
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
