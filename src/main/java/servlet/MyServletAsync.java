package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/ajaxServlet")
public class MyServletAsync extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqString=getBody(request);
        response.setContentType("text/plain");
        response.getWriter().write(reqString);
        response.setStatus(HttpServletResponse.SC_OK);

    }

    public String getBody(HttpServletRequest request) throws IOException {
        return request.getParameter("number");
    }
}
