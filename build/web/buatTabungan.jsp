<%-- 
    Document   : buatTabungan
    Created on : Apr 15, 2018, 7:57:20 PM
    Author     : ASUS
--%>
<%@page import="model.Tabungan"%>
<%@page import="services.admin.TabunganService"%>
<jsp:useBean id="t" class="model.Tabungan"></jsp:useBean>
<jsp:setProperty property="*" name="t"/>

<%@page import="model.Nasabah"%>
<%@page import="services.admin.NasabahService"%>
<jsp:useBean id="n" class="model.Nasabah"></jsp:useBean>
<jsp:setProperty property="*" name="n"/>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buat Tabungan</title>
         <a href="listNasabah.jsp"><img src="arr.png"></a>
    </head>
    <body style="background-color: #ebebeb;>
       // <a href="#"></a>
    
<center><h1>Buat Tabungan</h1></center>
        <center>
            <form action="addTabungan.jsp" method="POST">
                <table>
                    <tr>
                        <td>ID</td>
                        <td> : <input type="text" value="<% out.println(n.getId()); %>" name="idNasabah"></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td> : <input type="text" name="userName"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> : <input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td>Saldo</td>
                        <td> : <input type="number" name="saldo"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" ></td>
                    </tr>
                </table>
                
            </form>

        </center>
    </body>
</html>
