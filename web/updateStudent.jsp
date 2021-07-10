<%-- 
    Document   : singledisplay 
    Created on : oct 1, 2020, 6:32:45 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
.button{
               box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
               padding: 14px 40px;
               border-radius: 12px;
               
               background-color: #000000;
                border: none;
                color: whitesmoke;
                padding: 16px 32px;
                text-align: center;
                font-size: 16px;
                margin: 4px 2px;
                opacity: 0.6;
                transition: 0.3s;
                display: inline-block;
                text-decoration: none;
                cursor: pointer;
                font-weight: bold;
            }
            .button:hover {opacity: 1} 
            div{
                font-size: 16px;
                font-weight: bold;
            }
            input[type=text]{
            padding: 4px 8px;
            margin: 8px 0;
            box-sizing: border-box;}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String studentid = request.getParameter("enrollmentno");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from students where enrollno="+studentid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
    <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <a href="homepage2.jsp">Home</a>
    <a href="About.jsp">About</a>
    <a href="index.jsp">Logout</a>
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
<h1>UPDATE STUDENT</h1>
<form action="updatestudentProcess.jsp" method="post" >
<br>
 First Name:<br>
<input type="hidden" name="fname" value="<%=resultSet.getString("fname") %>">
<input type="text" name="fname" value="<%=resultSet.getString("fname") %>">
<br>

 last Name:<br>
<input type="hidden" name="name" value="<%=resultSet.getString("name") %>">
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
Enrollment No.:<br>
<input type="text" name="enrollno" value="<%=resultSet.getString("enrollno") %>">
<br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br>
Contact:<br>
<input type="text" name="contact" value="<%=resultSet.getString("contact") %>">
<br>
Language:<br>
<input type="text" name="language" value="<%=resultSet.getString("language") %>">
<br>
10th Marks %:<br>
<input type="text" name="eduprime" value="<%=resultSet.getString("eduprime") %>">
<br>
12th marks %:<br>
<input type="text" name="edusec" value="<%=resultSet.getString("edusec") %>">
<br>
Stream:<br>
<input type="text" name="stream" value="<%=resultSet.getString("stream") %>">
<br>
Current Semester:<br>
<input type="text" name="semester" value="<%=resultSet.getString("semester") %>">
<br>
CGPA:<br>
<input type="number" name="cgpa" value="<%=resultSet.getString("cgpa") %>">
<br>
<h1>PARTICIPATION</h1>
Sports:<br>
<input type="text" name="sports" value="<%=resultSet.getString("sports") %>">
<br>
Courses:<br>
<input type="text" name="courses" value="<%=resultSet.getString("courses") %>">
<br>
Internships:<br>
<input type="text" name="internships" value="<%=resultSet.getString("internships") %>">
<br><br>
<input type="submit" value="Update" class="button"> 
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</body>
</html>
