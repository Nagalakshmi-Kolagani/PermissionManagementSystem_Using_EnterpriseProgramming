<%@ page import="java.sql.*" %>
<%
String uname=(String)request.getParameter("uname");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-FCEM9RQ:1521:xe", "system", "Nani*14323");
	PreparedStatement p=con.prepareStatement("update permission set status1=? where uname=?");
	p.setString(1,"ACCEPTED");
	p.setString(2,uname);
	ResultSet r=p.executeQuery();
	response.sendRedirect("lperm.jsp");
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
	%>