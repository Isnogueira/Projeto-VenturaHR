package br.edu.infnet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

//import br.edu.infnet.service.VagaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import br.edu.infnet.model.domain.Usuario;
import br.edu.infnet.model.domain.Vaga;
import br.edu.infnet.service.UsuarioService;
import br.edu.infnet.service.VagaService;

@SessionAttributes("user")
@Controller
public class AcessoController {

    @Autowired
    private UsuarioService usuarioService;
    @Autowired
    private VagaService vagaService;


    @GetMapping(value="/")
    public String telaInicial(){
    	return "/index";
    }
    @GetMapping(value="/login")
    public String telalogin(){
        return "/login";
    }
    
    @GetMapping(path = "/usuario/{idUsuario}")
    public String listarPorIdUsuario(Model model, @PathVariable String idUsuario) {
        
    	List<Vaga> vagas = vagaService.listarPorIdUsuario(idUsuario);
    	   
    	   model.addAttribute("vagas", vagas);
        
        return "/empresa/index";
    }
    
    

    @PostMapping (value = "/login")
    public String login(Model model, @RequestParam String email, @RequestParam String senha){

        Usuario usuario = usuarioService.obterPorEmail(email);

        if (usuario != null && email.equals(usuario.getEmail()) && senha.equals(usuario.getSenha())) {

            model.addAttribute("user", usuario);

            String caixaEntrada = null;

            if(usuario.getTipo() == Usuario.EMPRESA){

                List<Vaga> vagas = vagaService.listarPorIdUsuario(String.valueOf(usuario.getId()));
                model.addAttribute("vagas", vagas);

                caixaEntrada = "/empresa/index";

            } else if(usuario.getTipo() == Usuario.CANDIDATO){
                caixaEntrada = "/candidato/index";

            } else{
                caixaEntrada="/administrador/index";
            }

            return caixaEntrada;

        } else {

            model.addAttribute("mensagem", "Autenticação inválida para o usuário " + email + "!");

            return "/login";
        }
    }


    @GetMapping(value = "/logout")
    public String logout(HttpSession session, SessionStatus status) {
        status.setComplete();
        session.removeAttribute("user");

        return "redirect:/";
    }
}

