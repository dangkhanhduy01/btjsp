<%-- 
    Document   : bt4
    Created on : Oct 17, 2024, 8:35:34 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ĐỔI NGOẠI TỆ</h1>
        <form action="bt4.jsp" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>So tien</td>
                        <td><input type="text" name="Sotien" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>So ngoai te</td>
                        <td><select name="Songoaite">
                                <option value="USD">USD</option>
                                 <option value="USD">GBP</option>
                                  <option value="USD">EUR</option>
                                   <option value="USD">JPY</option>
                                    <option value="USD">AUD</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Đổi tiền" />
                            <input type="reset" value="Tiếp tục" />
                        </td>

                    </tr>
                </tbody>
            </table>

        </form>
         <%
            String sotien = request.getParameter("Sotien");
            String Songoaite = request.getParameter("Songoaite");
            if (sotien != null) {
                double tien = Double.parseDouble(sotien);

                double tienVND = 0;
                switch (Songoaite) {
                    case "USD":
                        tienVND = tien * 21380;
                        break;
                    case "GBP":
                        tienVND = tien * 32682.80;
                        break;
                    case "EUR":
                        tienVND = tien * 23555.67;
                        break;
                    case "JPY":
                        tienVND = tien * 178.61;
                        break;
                    case "AUD":
                        tienVND = tien * 16727.44;
                        break;
                }
                out.println("So tien doi duoc:" + sotien + "(" + Songoaite + ")=" + tienVND + "VND");
            }
           

            %>
    </body>
</html>
