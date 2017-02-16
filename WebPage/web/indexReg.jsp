<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5 Transitional//EN">

<html>
    <head>      
        <title>Web Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.css" type="text/css" rel="stylesheet">
    </head>
    
    <body>
        <div class="container">
            <center><h1>Login</h1></center>
            <form action="LoginCheck.jsp" method="POST">
                <table align="center">
                    <tr>
                        <td><input type="text" name="username" placeholder="username"></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="password" placeholder="password"></td>
                    </tr>
                    <tr>
                        <td><center>Successful registration!</center></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" class="btnSubmit"></td>
                    </tr>
                </table>
            </form>
        
            <form action="Register.jsp" method="POST">
                <table align="center">          
                    <tr>
                        <td><input type="submit" value="Register" class="btnReg"></td>
                    </tr>
                </table>
            </form>
              
        </div>
    </body>
</html>