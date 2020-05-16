<%
String name = (String)session.getAttribute("name");
String uname = (String)session.getAttribute("uname");
String pwd = (String)session.getAttribute("pwd");
if(name==null || uname==null || pwd==null)
{
    response.sendRedirect("ulogout.jsp");
}
%>
<html>
    <head>
       <style>
       .login{
  
   background-color:#FFFACD;
   border:2px solid black;
   border-radius:10px;
   padding:5px 10px 5px 10px ; 
   font: 500 20px Georgia,serif;
   cursor:pointer;
}
td input[type="password"]
{
  border:3px solid black;
  padding:4px;
}
       </style>
    </head>
    <b>
    <body bgcolor="aquamarine">
        <h3 align=center>Welcome&nbsp;&nbsp;<%=uname%></h3>
        <hr color="green"><hr color="green"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="employeehome.jsp">Home</a><br>
       &nbsp;&nbsp;&nbsp;&nbsp;<a href="changepwd.jsp">Change Password</a><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="ulogout.jsp">Logout</a>
        <br><br>
<br><fieldset width="150">
      <legend><strong style="color:black"><i>Change Password</i></strong></legend>
  <form method="post" action="changepwd1.jsp">
      
      <table align="center" width="40%" height="20%">
      
         
          <tr>
              <td><b>Enter Old Password</b></td>
              <td><input type="password" name="opwd" required></td>
          </tr>
           <tr>
              <td><b>Enter New Password</b></td>
              <td><input type="password" name="npwd" required></td>
          </tr>
            <tr>
              <th><input type="submit" class="login" value="Change"></th>
                  <th><input type="reset" class="login" value="Clear"></th>
          </tr>
      </table>
      
  </form>  
  </fieldset>
</b>
</body>
</html>



