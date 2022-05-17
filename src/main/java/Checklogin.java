import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

@WebServlet(value = "/checklogin")
public class Checklogin extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String query="select * from sample.users where username=? and password=? ";
        try{
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","Udhaya2k1*");
             Statement stmt=con.createStatement();
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1,username);
             ps.setString(2,password);
             ResultSet rs = ps.executeQuery();
             if(rs.next())
             {
                 RequestDispatcher rd = request.getRequestDispatcher("intro.jsp");
                 rd.forward(request,response);
                 //HttpSession session = req.getSession();
                 //res.sendRedirect("intro.jsp");
             }
             else
             {
                 response.getWriter().write("<h5 style='color:blue; font-size: 40px; font-family: Arial, Helvetica, sans-serif;text-align:center;'><center>User not found ! <center></h5>");
             }
             con.close();
    }
        catch(Exception e){ System.out.println(e);}

}
}
