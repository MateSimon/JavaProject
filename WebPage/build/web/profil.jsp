<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>      
        <title>Web Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.css" type="text/css" rel="stylesheet">
    </head>
    
    <body>
        <sql:setDataSource
            var="myDS"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/webpagedb"
            user="root" password=""
        />

        <sql:query var="listUsers"   dataSource="${myDS}">
            SELECT * FROM webpagetable WHERE username = "<%= request.getParameter("username") %>" ;
        </sql:query>
     
        <div class="profContainer">
            
                <center>Profile page</center><br><br>
                <div style="float:left;">
                    <table class ="profTab" style = "width:50%; align:left;">
                        <tr>
                            <td>ID</td>
                        </tr>
                        <tr>
                            <td>Username</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                        </tr>
                        <tr>
                            <td>Name</td>
                        </tr>
                    </table>    
                </div>
            
                <div style="float:right;">
                    <table class ="profTab" style = "width:50%; float: right; ">    
                        <c:forEach var="user" items="${listUsers.rows}">
                            <tr>
                                <tr><td><c:out value="${user.id}" /></td></tr>
                                <tr><td><c:out value="${user.username}" /></td></tr>
                                <tr><td><c:out value="${user.email}" /></td></tr>
                                <tr><td><c:out value="${user.FirstName} " /><c:out value="${user.LastName}" /></td></tr>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                
                <form action="index.jsp" method="POST">
                       <input type="submit" value="Logout" class="btnSubmit">        
                </form>        
        </div>
    </body>
</html>

