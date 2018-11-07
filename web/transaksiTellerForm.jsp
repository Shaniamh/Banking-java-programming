<%-- 
    Document   : transaksiTeller
    Created on : Apr 17, 2018, 1:35:19 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaksi Teller</title>
    </head>
    <body>
        <a href="systemNasabah.jsp"><img src="arrow.png"></a>
        <center>
            <h1>Transaksi Teller</h1>
            <form action="loginTeller.jsp" method="post">
                <table>
                    <tr>
                        <td>Nomor Rekening</td>
                        <td> : <input type="number" name="noRek"></td>
                    </tr>
                    <tr>
                        <td>Password Rekening</td>
                        <td> : <input type="password" name="password"></td>
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
