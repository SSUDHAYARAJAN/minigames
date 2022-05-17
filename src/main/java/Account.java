import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(value="/singup")
public class Account extends HttpServlet  {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException
    {
        res.setContentType("text/html");
        String query="select * from users where username=?";
        String username=req.getParameter("username");
        String password=req.getParameter("confirmedpassword");
        String email=req.getParameter("mail");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "Udhaya2k1*");
            Statement stmt = con.createStatement();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,username);

            ResultSet rs = ps.executeQuery();

            if(rs.next())
            {
                res.getWriter().write("<h5 style='color:red; font-size: 20px; font-family: Helvetica, sans-serif;text-align:center;'><center>username alread exist try different username <center></h5>");
            }
            else
            {
                query="insert into sample.users values(?,?,?)";
                ps=con.prepareStatement(query);
                ps.setString(1,username);
                ps.setString(2,password);
                ps.setString(3,email);
                if(ps.executeUpdate()>0)
                    res.getWriter().write("<h5 style='color:blue; font-size: 40px; font-family: Arial, Helvetica, sans-serif;text-align:center;'><center>Account added Successfully ! <center></h5>");

            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
