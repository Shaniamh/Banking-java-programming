<%-- 
    Document   : buatKartuATM
    Created on : Apr 16, 2018, 8:03:28 PM
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

<%@page import="model.kartuATM"%>
<%@page import="services.admin.KartuATMService"%>
<jsp:useBean id="k" class="model.kartuATM"></jsp:useBean>
<jsp:setProperty property="*" name="k"/>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buat Kartu ATM</title>
    </head>
    <body>
        <%
            Tabungan tabung = TabunganService.getInstance().getById(n.getId());
            kartuATM jenisKartu = new kartuATM();
            
        %>
        <a href="pilihTabunganCreateATM.jsp">Kembali</a>
        <center>
            <h1>Buat Kartu ATM</h1>
            <form action="addKartuATM.jsp" method="POST">
                <table>
                    <tr>
                        <td>No Rekening</td>
                        <td>: <input type="text" name="noRek" value="<% out.println(n.getId()); %>"></td>
                    </tr>
                    <tr>
                        <td>Nama</td>
                        <td>: <input type="text" name="namaUser" value="<% out.println(tabung.getUserName()); %>"> </td>
                    </tr>
                    <tr>
                        <td>Pilih Jenis ATM</td>
                        <td> : 
                            <select name="tipe">
                                <option value="<% out.print(jenisKartu.getJenisATM().GOLD); %>"><% out.print(jenisKartu.getJenisATM().GOLD); %></option>
                                <option value="<% out.print(jenisKartu.getJenisATM().PLATINUM); %>"><% out.print(jenisKartu.getJenisATM().PLATINUM); %></option>
                                <option value="<% out.print(jenisKartu.getJenisATM().SILVER); %>"><% out.print(jenisKartu.getJenisATM().SILVER); %></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>PIN</td>
                        <td>: <input type="number" name="pin"></td>
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
