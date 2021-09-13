package br.edu.infnet.app;

import br.edu.infnet.infra.UsuarioService;
import br.edu.infnet.model.domain.Usuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UsuarioController", value = "/UsuarioController")
public class UsuarioController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Usuario usuario = new Usuario(
                Integer.valueOf(request.getParameter("id")),
                request.getParameter("email"),
                request.getParameter("senha"));

    }
}
