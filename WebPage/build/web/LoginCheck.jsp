<%@page import="javax.persistence.ParameterMode"%>
<%@page import="javax.persistence.ParameterMode"%>
<%@page import="javax.persistence.StoredProcedureQuery"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.io.*"%>

        <%              
            try{
                String username = request.getParameter("username");   
                String password = request.getParameter("password");
                
                EntityManagerFactory emf=Persistence.createEntityManagerFactory("WebPagePU");
                EntityManager em=emf.createEntityManager();
                StoredProcedureQuery spq=em.createStoredProcedureQuery("login");
                spq.registerStoredProcedureParameter("username", String.class, ParameterMode.IN);
                spq.setParameter("username", username);
                spq.registerStoredProcedureParameter("password", String.class, ParameterMode.IN);
                spq.setParameter("password", password);
                List<Object[]> lista = spq.getResultList();
                
                for(Object [] ott: lista){
                    request.setAttribute("username", username);
                    request.getRequestDispatcher("profil.jsp").forward(request, response);
                }                
                   response.sendRedirect("indexError.jsp");            
           }
            
           catch(Exception e){       
               out.println("Something went wrong !! Please try again");       
           }      
        %>
        
        
        
        
        

        
        