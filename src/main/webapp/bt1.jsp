<%-- 
    Document   : bt1
    Created on : Oct 16, 2024, 8:29:49 AM
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
        <h1>chương trình đầu tiên</h1>
        <form action="bt1.jsp" method="POST">
            cho biết họ tên<input type="text" name="hoten" value="" required="" />
            <input type="submit" value="thi hành" />
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String hoten =request.getParameter("hoten");
            if(hoten!=null)
            {
            out.println("chào bạn: <b>" + hoten + "</b>");
        }
            %>
    </body>
</html>
