package mx.edu.utez.crudco.crudco;
import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String n1 = request.getParameter("n1");
        String n2 = request.getParameter("n2");
        String tipoOperacion = request.getParameter("operacion");

        int x1 = Integer.parseInt(n1);
        int x2 = Integer.parseInt(n2);


        //response.setContentType("text/html");

        // Hello
        //PrintWriter out = response.getWriter();
        //out.println("<html><body>");
        //out.println("<h1>" + n1 + "</h1>");
        //out.println("<h1>" + n2 + "</h1>");
        //PAra hacer un cabio de string a entero tenemos que hacer un parceo
        //Mediante la clase integer.parseInt(String); = int x;

        response.sendRedirect("index.jsp?n1=" + n1 + "&n2=" + n2 + "&operacion=" + tipoOperacion);


        /*if (tipoOperacion.equals("Suma")){
            int resul = x1 + x2;
            out.println("<h1>Resultado de la suma es:" + " " + resul + "</h1>");
        }
        else if (tipoOperacion.equals("Resta")){
            int resul = x1 - x2;
            out.println("<h1>Resultado de la resta es:" + " " + resul + "</h1>");
        }
        else if (tipoOperacion.equals("Multiplicacion")) {
            int result = x1 * x2;
            out.println("<h1>Resultado de la multiplicación es:" + " " + result + "</h1>");
        }
        else if (tipoOperacion.equals("Division")) {
            int result = x1/x2;
            out.println("<h1>Resultado de la multiplicación es:" + " " + result + "</h1>");
        }


        out.println("</body></html>");*/


    }

    public void destroy() {
    }
}