
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME</title>
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
           .button{
               box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
               padding: 14px 40px;
               border-radius: 12px;
               font-weight: bold;
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
            }
            .button:hover {opacity: 1} 
            div{
                font-size: 20px;
                font-weight: bold;
            }
            input[type=text]{
            width: 100%;
            padding: 6px 12px;
            margin: 8px 0;
            box-sizing: border-box;}
            input[type=password]{
            width: 100%;
            padding: 6px 12px;
            margin: 8px 0;
            box-sizing: border-box;}
        </style>
    </head>
    <body>
        
        <center><h1><u>LOGIN</u></h1></center>
        <center>
            <div>  
                <form action="login" method="POST">
                <table>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" placeholder="username" </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" placeholder="password"</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center"><input type="submit" value="Login" class="button"></td>
                    
                    </tr>
                   
                    
                </table>
                </form>
            </div>
        </center>
    </body>
</html>
