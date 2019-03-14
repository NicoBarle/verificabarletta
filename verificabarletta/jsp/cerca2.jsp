<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>INFORMAZIONI CANTANTE</title>
    </head>
    <body>
        <h1>INFORMAZIONI CANTANTE</h1>
        <% 
            try{
                
            String connectionUrl = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=XFactor;user=barletta.nicolas;password=xxx123#";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connectionUrl);
			
			String nome = request.getParameter("nome");
			
			String cognome = request.getParameter("cognome");
			
			String sql = "SELECT * FROM Cantante WHERE Nome = ? AND Cognome = ?";
			
			PreparedStatement prepStmt = connection.prepareStatement(sql);
			
			prepStmt.setString(1, nome);
			
			prepStmt.setString(2, cognome);
			
			ResultSet rs = prepStmt.executeQuery();
			
			while(rs.next()){
			    
			    String Nome = rs.getString("nome");
			    
			    String Cognome = rs.getString("cognome");
			    
			    String DataDiNascita = rs.getString("DataDiNascita");
			    
			    String LuogoDiNascita = rs.getString("LuogoDiNascita");
			    
			    if(Nome != null){
			        
			        out.println(Nome);
			        
			        }
			        
			    if(Cognome != null){
			        
			        out.println(Cognome);
			        
			        }
			        
			    if(DataDiNascita != null){
			        
			        out.println(DataDiNascita);
			        
			        }
			        
			    if(LuogoDiNascita != null){
			        
			        out.println(LuogoDiNascita);
			        
			        }
			        
			    }
			    
			rs.next();
			       
	        connection.close();
	        
	        } catch(Exception e) {
	            
	            out.println(e);
	            
	            }
        
        %>
    </body>
</html>