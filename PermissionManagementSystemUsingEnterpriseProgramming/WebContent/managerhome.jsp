<%
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(uname==null || pwd==null)
{
    response.sendRedirect("mlogout.jsp");
}
%>
<html>
    <head>
        
    </head>
    <body bgcolor="aquamarine">
        <h3 align=center>Welcome&nbsp;&nbsp;<%=uname%></h3>
        <hr color="green"><hr color="green"><br><br><br><br>
        <a href="managerhome.jsp">Home</a><br><br><br><br>
        <a href="changemanagerpwd.jsp">Change Password</a><br><br><br><br>
        <a href="mperm.jsp">View permissions</a><br><br><br><br>
        <a href="mlogout.jsp">Logout</a>
        <br><br>
    </body>
</html>