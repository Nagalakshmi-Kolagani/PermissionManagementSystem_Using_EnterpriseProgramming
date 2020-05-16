<%
String name = (String)session.getAttribute("name");
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(name==null || uname==null || pwd==null)
{
    response.sendRedirect("usession.html");
}
%>
<html>
    <head>
        
    </head>
    <b>
    <body bgcolor="aquamarine">
        <h3 align=center>Welcome&nbsp;&nbsp;<%=name%></h3>
        <hr color="green"><hr color="green"><br>
        <a href="employeehome.jsp"><p align=center>Home</p></a><br><br><br><br>
        <a href="changepwd.jsp"><p align=center>Change Password</p></a><br><br><br><br>
       <a href="permissionform.html" ><p align=center>Raise permission</p></a><br><br><br><br>
        <a href="eperm.jsp"><p align=center>View permissions</p></a><br><br><br><br>
        <a href="ulogout.jsp"><p align=center>Logout</p></a><br>
        <br><br>
    </body>
    </b>
</html>