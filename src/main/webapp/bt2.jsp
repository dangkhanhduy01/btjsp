<%-- 
    Document   : bt2
    Created on : Oct 16, 2024, 8:39:14 AM
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
        <h1>diện tích chu vi - hình chữ nhật</h1>
        <form action="bt2.jsp" method="POST">
            <table border="0">
              
                    <tr>
                        <td>nhập chiều dài</td>
                        <td><input type="text" name="dai" value="" required="" /></td>     
                    </tr>
                <tr>
                        <td>nhập chiều rộng</td>
                        <td><input type="text" name="rong" value="" required="" /></td>     
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="tính toán" />
                            <input type="reset" value="tiếp tục" />
                        </td>
                    </tr>
            </table>
         <%  
             String dai = request.getParameter("dai");
    String rong = request.getParameter("rong");
    if(dai != null && rong != null)
    {
        double d = Double.parseDouble(dai);
        double r = Double.parseDouble(rong);
        double dt = d * r;
        double cv = (d + r) * 2;
out.println("<hr>");
out.println("dien tich:" + dt  );
out.println("chu vi:" + cv );
    }
%>
        </form>


    </body>
</html>
