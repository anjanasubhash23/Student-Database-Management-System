<%-- 
    Document   : UA
    Created on : Aug 18, 2020, 6:28:31 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String studtid = request.getParameter("enrollno");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "student";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
     <style>
            
            body{
                
                background-image: url("image/school.jpg");
                -moz-background-size: cover;
-webkit-background-size: cover;
background-size: cover;
background-position: top center !important;
background-repeat: no-repeat !important;
background-attachment: fixed;
            }
            .overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-x: hidden;
  transition: 0.5s;
}

.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
table{font-weight: bold;
 border-collapse: collapse;
 height: 50px;
 width : 100%;
 text-align: center;
 color: black;}
th {
  background-color:  #e9f1e9;
  color: black;
  text-align: center;
  height: 40px;
}
tr:hover {background-color:#D1D0CE;}
.button {
  background-color:  rgb(142, 186, 223); 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>
        </style>
<body>
    <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <a href="homepage2.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="Login.jsp">Logout</a>
  </div>
</div>
<span style="font-size:40px;cursor:pointer" onclick="openNav()">&#9776;</span>
<script>
function openNav() {
  document.getElementById("myNav").style.width = "30%";
}
function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}
</script>
<div align="center">
<form action="deleteallprocess.jsp" method="post" >
<br>   
<h1>Delete Student</h1>
<table border="3">
<tr>
<th>Enrollment No</th>
<th>First name</th>
<th>Last name</th>
<th>Address</th>
<th>Contact</th>
<th>Language</th>
<th>10th%</th>
<th>12th%</th>
<th>Stream</th>
<th>Semester</th>
<th>CGPA</th>
<th>Sports</th>
<th>Courses</th>
<th>Internship</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from students";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("enrollno") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("language") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("eduprime") %></td>
<td><%=resultSet.getString("edusec") %></td>
<td><%=resultSet.getString("stream") %></td>
<td><%=resultSet.getString("Semester") %></td>
<td><%=resultSet.getString("cgpa") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("courses") %></td>
<td><%=resultSet.getString("internships") %></td>
<td><a href="deleteallprocess.jsp?enrollno=<%=resultSet.getString("enrollno") %>"</td>
<
       
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br>
<table>
<tr>
                        <td colspan="2" style="text-align: center"><input type="submit" value="Delete"  class="button"></td>
                    </tr>
 </table>                   
</body>
</html>