package br.edu.infnet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import br.edu.infnet.model.domain.Usuario;
import br.edu.infnet.model.domain.Vaga;
import br.edu.infnet.service.UsuarioService;
import br.edu.infnet.service.VagaService;


@Controller
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;
    private VagaService vagaService;
    
    @GetMapping(value = "/registro")
    public String telaRegistro(){
        return "/usuario/registro";
    }
  
    
    @PostMapping(value = "/registro")
    public String registrar(Model model, Usuario usuario) {
    	
       usuarioService.criarConta(usuario);

       model.addAttribute("user", usuario);

       String caixaEntrada = null;

        if(usuario.getTipo() == Usuario.EMPRESA){
        	
           List<Vaga> vagas = vagaService.listarPorIdUsuario(usuario.getId());
           
           model.addAttribute("vagas", vagas);

            caixaEntrada = "/empresa/index";

        } else if(usuario.getTipo() == Usuario.CANDIDATO){
            caixaEntrada = "/candidato/index";

        } else{
            caixaEntrada="/administrador/index";
        }

       return caixaEntrada;


    }
    
}


