/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import ModeloDao.AdminDao;
import ModeloDao.OradorDao;
import ModeloDao.TicketDao;
import com.mysql.cj.util.StringUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Orador;
import model.Ticket;

/**
 *
 * @author Cristian
 */
@WebServlet(name = "controlador", urlPatterns = "/controlador")
public class Controlador extends HttpServlet {

    OradorDao oradorDao = new OradorDao();
    AdminDao adminDao = new AdminDao();
    TicketDao ticketDao = new TicketDao();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String delete = request.getParameter("delete");
        String deleteT = request.getParameter("ticket");
        if (delete != null && Pattern.matches("[0-9]+[\\.]?[0-9]*", delete)) {
            oradorDao.delete(Integer.parseInt(delete));
            response.sendRedirect("vistas/admin/oradores.jsp?page=1");
            return;
        }

        if (deleteT != null && Pattern.matches("[0-9]+[\\.]?[0-9]*", deleteT)) {
            ticketDao.delete(Integer.parseInt(deleteT));
            response.sendRedirect("vistas/admin/tickets.jsp?page=1");
            return;
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String saveOr = request.getParameter("save");
        String login = request.getParameter("login");
        String editID = request.getParameter("edit");
        String pago = request.getParameter("pago");

        if (pago != null && pago.equalsIgnoreCase("ok")) {
            String[] categoria = {"Estudiante", "Traine", "Junior"};
            int[] offSale = {80, 50, 15};
            Double precio = Double.parseDouble(request.getParameter("cantidad")) * (200 - 200 * (offSale[Integer.parseInt(request.getParameter("categoria"))] / 100));

            boolean stust = ticketDao.pago(
                    Ticket.builder()
                            .nombre(request.getParameter("nombre"))
                            .apellido(request.getParameter("apellido"))
                            .email(request.getParameter("email"))
                            .cantidad(Integer.valueOf(request.getParameter("cantidad")))
                            .precio(precio)
                            .categoria(
                                    categoria[Integer.parseInt(request.getParameter("categoria"))])
                            .build());
            System.out.println(stust);
            if (stust) {
                response.sendRedirect("vistas/tickets.jsp?pago=success");
                return;
            }
            response.sendRedirect("vistas/tickets.jsp?pago=error");
            return;
        }

        if (editID != null && editID.equalsIgnoreCase("ok")) {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String tema = request.getParameter("tema");
            int id = Integer.parseInt(request.getParameter("id"));
            oradorDao.edit(
                    Orador.builder()
                            .apellido(apellido)
                            .nombre(nombre)
                            .tema(tema)
                            .id(id)
                            .build()
            );
            response.sendRedirect("vistas/admin/oradores.jsp?page=1");
            return;
        }

        if (editID != null && editID.equalsIgnoreCase("ticket")) {
            String[] categoria = {"Estudiante", "Traine", "Junior"};
            Double[] offSale = {0.80, 0.50, 0.15};
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            int cat = Integer.parseInt(request.getParameter("categoria"));
            Double precio = (cantidad * 200) - (cantidad * 200) * offSale[cat];
            System.out.println(precio);
            boolean stust = ticketDao.edit(
                    Ticket.builder()
                            .id(Integer.parseInt(request.getParameter("id")))
                            .nombre(request.getParameter("nombre"))
                            .apellido(request.getParameter("apellido"))
                            .email(request.getParameter("email"))
                            .categoria(categoria[cat])
                            .precio(precio)
                            .cantidad(cantidad)
                            .build());
            if (stust) {
                response.sendRedirect("vistas/admin/tickets.jsp?page=1");
                return;
            }
            response.sendRedirect("vistas/admin/tickets.jsp?page=1");
            return;
        }

        if (saveOr != null && saveOr.equalsIgnoreCase("orador")) {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String tema = request.getParameter("tema");
            oradorDao.add(
                    Orador.builder()
                            .apellido(apellido)
                            .nombre(nombre)
                            .tema(tema)
                            .build()
            );
            response.sendRedirect("index.jsp#orador");
            return;
        }

        if (login != null && login.equalsIgnoreCase("ok")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if (adminDao.login(email, password)) {
                System.out.println("acaa");
                response.sendRedirect("vistas/admin/oradores.jsp?page=1");
                return;
            } else {
                response.sendRedirect("vistas/login.jsp?error=notfound");
                return;
            }
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
