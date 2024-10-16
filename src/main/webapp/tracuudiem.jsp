<%-- 
    Document   : tracuudiem
    Created on : Oct 16, 2024, 10:54:36 AM
    Author     : ADMIN
--%>

<%@page import="my.common.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>tra cứu điểm</h1>
        <form action="tracuudiem" method="POST">
            số báo danh <input type="text" name="sobd" value="" />
            họ tên <input type="text" name="hoten" value="" />
            <button type="submit">tra cứu</button>
        </form>
            <%
        request.setCharacterEncoding("UTF-8");
        String hoten = request.getParameter("hoten");
        String sobd = request.getParameter("sobd");
        
        if (hoten != null || sobd!=null)
        {
           Connection conn = null;
        PreparedStatement ps=null;
        ResultSet rs=null;
          conn = Database.getConnection();
           if (hoten != null || sobd!=null)
        {
           ps = conn.prepareStatement("select*from thisinh where hoten like ?");
             ps.setString(1, "%" + hoten + "%");
            }else if(sobd!=null && !sobd.isEmpty())
            {
            ps = conn.prepareStatement("select*from thisinh where sobd=?");
             ps.setString(1, sobd);
            }
            rs = ps.executeQuery();
        
    %>
    </body>
</html>
