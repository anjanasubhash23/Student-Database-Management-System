<%-- 
    Document   : addstud
    Created on : October 3 , 2020, 2:46:33 AM
   
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh"
        content="1; url = homepage2.jsp" />  
    </head>
<style>
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
  text-align: left;
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

.box select{

  color :black;
  padding: 10px;
  width : 250px;
  height: 50px;
  border: none;
  font-size: 10px;
}

.group {
  font-size: 20px;
  margin: 5px;
}

.group1 {
  font-size: 20px;
}

.file {
  font-size: 20px;
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
               
               background-color: #233e49;
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
            input[type=text], input[type=number]{
            width : 30%;
            height: 25%;
            padding: 12px 20px;
            margin: 5px;
            box-sizing: border-box;
            }

            input[type=file]{
              font-size: 20px;
            }
            
    </style>
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
<%@page import="java.sql.*,java.util.*"%>

<%
String studid=request.getParameter("enrollno");
String fname=request.getParameter("fname");
String lname=request.getParameter("name");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String language=request.getParameter("language");
String eduprime=request.getParameter("eduprime");
String edusec=request.getParameter("edusec");
String stream =request.getParameter("stream");
String semester =request.getParameter("semester");
String cgpa =request.getParameter("cgpa");
String sports =request.getParameter("sports");
String courses =request.getParameter("courses");
String internships =request.getParameter("internships");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3307/student?zeroDateTimeBehavior=convertToNull","root","");
if(conn!=null)
out.println("connected");


Statement st=conn.createStatement();


int i=st.executeUpdate("insert into students(enrollno,fname,name,address,contact,language,eduprime,edusec,stream,semester,cgpa,sports,courses,internships)values('"+studid+"','"+fname+"','"+lname+"','"+address+"','"+contact+"','"+language+"','"+eduprime+"','"+edusec+"','"+stream+"','"+semester+"','"+cgpa+"','"+sports+"','"+courses+"','"+internships+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</html>