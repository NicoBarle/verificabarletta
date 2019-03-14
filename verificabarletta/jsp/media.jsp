<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>ETA MEDIA</title>
    </head>
    <body>
        <h1>ETA' MEDIA</h1>
        <% 
            try{
                
            String connectionUrl = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=XFactor;user=barletta.nicolas;password=xxx123#";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(connectionUrl);
            
            Statement stmt = connection.createStatement();
			
			String sql = "SELECT AVG(DATEDIFF(\"yyyy\",DataDiNascita,getdate())) AS etamedia FROM Cantante";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
			    
			    Int etamedia = rs.getInt(etamedia);
			    
			    }
			    
			rs.next();
			       
	        connection.close();
	        
	        } catch(Exception e) {
	            
	            out.println(e);
	            
	            }
        
        %>
    </body>
</html>