import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value  ="/getmathscore")
public class MathGame extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        req.setAttribute("username","iu");
//        RequestDispatcher rd = req.getRequestDispatcher("numbergame.jsp");
//        rd.forward(req,res);
//        response.getWriter().println("<h5>Logged  as "+request.getParameter("username")+"</h5>");
//        request.setAttribute("username",request.getParameter("username"));
//        RequestDispatcher rd= request.getRequestDispatcher("numbergame.jsp");
//        rd.forward(request,response);
        response.getWriter().println(request.getParameter("Mscore"));
    }
}
