<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.persistence.ParameterMode"%>
<%@page import="javax.persistence.ParameterMode"%>
<%@page import="javax.persistence.StoredProcedureQuery"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
       
<html>
    <head>
        <title>Web Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.css" type="text/css" rel="stylesheet">
    </head>
    <body>
    
        <%
	   request.setAttribute("userCheck", request.getParameter("username"));
	   request.setAttribute("passCheck", request.getParameter("password"));
	%>
    
        <c:if test="${not empty userCheck}">
            <c:if test="${not empty passCheck}">
                <%
                    try{
                        String username = request.getParameter("username");       
                        String password = request.getParameter("password");
                        String email = request.getParameter("email");
                        String FirstName = request.getParameter("FirstName");
                        String LastName = request.getParameter("LastName");

                        EntityManagerFactory emf=Persistence.createEntityManagerFactory("WebPagePU");
                        EntityManager em=emf.createEntityManager();
                        StoredProcedureQuery spq=em.createStoredProcedureQuery("NewUser");
                        spq.registerStoredProcedureParameter("username", String.class, ParameterMode.IN);
                        spq.setParameter("username", username);
                        spq.registerStoredProcedureParameter("password", String.class, ParameterMode.IN);
                        spq.setParameter("password", password);
                        spq.registerStoredProcedureParameter("email", String.class, ParameterMode.IN);
                        spq.setParameter("email", email);
                        spq.registerStoredProcedureParameter("FirstName", String.class, ParameterMode.IN);
                        spq.setParameter("FirstName", FirstName);
                        spq.registerStoredProcedureParameter("LastName", String.class, ParameterMode.IN);
                        spq.setParameter("LastName", LastName);
                        List<Object[]> lista = spq.getResultList();

                        for(Object [] ott: lista){
                            response.sendRedirect("indexReg.jsp");
                        }                


                   }
                   catch(Exception e){       
                       response.sendRedirect("indexReg.jsp");     
                   }      
                %>
            </c:if>
	</c:if>
        
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
                        <td>Missing username or password!</td>
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

        