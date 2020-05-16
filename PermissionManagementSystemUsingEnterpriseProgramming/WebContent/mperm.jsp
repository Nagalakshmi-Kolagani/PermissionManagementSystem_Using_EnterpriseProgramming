<%@ page import="java.sql.*" %>
<html>
    <head>
     <style>
     table {
  border-collapse: collapse;
}

table, th, td {
  border: 3px solid black;
  text-align:center;
}
   </style>
    </head>
   <body bgcolor="aquamarine">
   </body>
</html>
<%
String uname=(String)session.getAttribute("uname");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-FCEM9RQ:1521:xe", "system", "Nani*14323");
	PreparedStatement p=con.prepareStatement("select * from permission ");
	ResultSet r=p.executeQuery();
	%>
	
	<h1 style="color:tomato" align=center>Manager Home</h1>
	<h3 style="color:tomato" align=left>Employee Permissions</h3>
	<table align="center" style="height:150px;color:blue;background-color:aquamarine">
	<tr>
	<th>Uname</th>
	<th>Permission ID</th>
	<th>Permission Category</th>
	<th>Start Date</th>
	<th>End Date</th>
	<th>Duration</th>
	<th>Reason</th>
	<th>Status 1</th>
	<th>Status 2</th>
	<th>Final Status</th>
	</tr>
	<%
	while(r.next())
	{
		%><tr>
		<td><%=r.getString("uname") %></td>
		<td><%=r.getString("permission_id") %></td>
		<td><%=r.getString("permission_category") %></td>
		<td><%=r.getString("start_date") %></td>
		<td><%=r.getString("end_date") %></td>
		<td><%=r.getString("duration") %></td>
		<td><%=r.getString("reason") %></td>
		<td><%=r.getString("status1") %></td>
		<td><%=r.getString("status2") %></td>
		<td><%=r.getString("final_status") %></td>
		<td><a href="maccept.jsp?uname=<%=r.getString("uname")%>">Accept</a></td>
		<td><a href="mreject.jsp?uname=<%=r.getString("uname")%>">Reject</a></td></tr>
		
		<%
	}
	%>
	</table>
	<%
	
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>