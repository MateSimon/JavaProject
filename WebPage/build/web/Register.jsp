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
            <center><h1>Registration</h1></center>
            <form action="NewUser.jsp" method="POST">
                <table align="center">
                    <tr>
                        <td><input type="text" name="username" placeholder="Username"></td>
                    </tr>
                    <tr>
                        <td><input type="password" name="password" placeholder="Password"></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" placeholder="E-mail"></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="FirstName" placeholder="First Name"></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="LastName" placeholder="Last Name"></td>
                    </tr>
                    <tr>
                        <td><br><input type="submit" value="Register" class="btnSubmit"></td>
                    </tr>
                </table>
            </form>
            
            <form action="index.jsp" method="POST">
                <table align="center">          
                    <tr>
                        <td><input type="submit" value="Login" class="btnLogin"></td>
                    </tr>
                </table>
            </form>
        </div>        
    </body>
</html>
