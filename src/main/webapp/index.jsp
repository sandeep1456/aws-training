<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.synerzip.training.UserService"%>
<%@page import="com.synerzip.training.User"%>
<%@page import="java.util.*"%>
<html>
<head>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46829942-1', 'synerzip.in');
  ga('send', 'pageview');

</script>

<style>
body{font-family: Arial;}
table{width: 600px;}
table th{font-weight: bold;
border-bottom: 1px solid #999;
background: #EEE;
padding: 5px 2px 2px 5px;}
</style>
</head>
<body>
 <h2>Users List</h2>
 <table>
  <tr>
   <th>ID</th>
   <th>Name</th>
   <th>Email</th>
  </tr>
  <%
      UserService us = new UserService();
      List<User> users = us.getUsers();
      for (User user : users)
      {
  %>
  <tr>
   <td><%=user.getId()%></td>
   <td><%=user.getName()%></td>
   <td><%=user.getEmail()%></td>
  </tr>
  <%
      }
  %>
 </table>
 
 
 <a href="index2.jsp">Add user</a>
</body>
</html>
