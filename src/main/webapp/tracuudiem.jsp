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
            String hoten =request.getParameter("hoten");
            String sodb =request.getParameter("sodb");
            if(hoten!=null || sodb!=null)
            {
            Connection conn=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            
            conn=Database.getConnection();
            if(hoten!=null && !hoten.isEmpty())
            {
            ps = conn.prepareStatement("select * from thisinh where hoten like?");
            ps.setString(1,"%" + hoten + "%");
        }else if(sodb!=null && !sodb.isEmpty())
        {
        ps = conn.prepareStatement("select * from thisinh where sodb?");
        ps.setString(1,sodb);
        }
        rs=ps.executeQuery();
        %>
            <table border="1">
                <thead>
                    <tr>
                        <th>Số báo danh</th>
                        <th>Họ tên</th>
                        <th>Địa chỉ</th>
                        <th>Điểm toán</th>
                        <th>Điểm lý</th>
                        <th>Điểm hoá</th>
                        <th>Tổng điểm</th>
                    </tr>
                    <%
                        while(rs.next())
                        {
                        double tongdiem=rs.getFloat("toán")+rs.getFloat("lý")+rs.getFloat("hoá");                 
                    %> 
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getFloat(4)%></td>
                        <td><%=rs.getFloat(5)%></td>
                        <td><%=rs.getFloat(6)%></td>
                        <td><%=tongdiem%></td>
                    </tr>
                    <%
                        }
                        %>
            </table>
                        <%
                            }
                        %>
    </body>
</html>
