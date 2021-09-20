package br.edu.infnet.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import br.edu.infnet.model.domain.Criterio;
import br.edu.infnet.model.domain.Usuario;
import br.edu.infnet.model.domain.Vaga;
import br.edu.infnet.service.VagaService;

@Controller
public class VagaController {

	@Autowired
	private VagaService vagaService;
	 
	
	  @GetMapping(value = "/publicar")
	    public String telaPublicar() {
	        return "/empresa/vaga";
	    }

	  
    @PostMapping(value = "/descricao")
    public ModelAndView salvarVaga(Vaga vaga, HttpServletRequest request){

        ModelAndView resposta = new ModelAndView("/empresa/vaga");
        HttpSession sessao = request.getSession();
        sessao.setAttribute("vaga", vaga);

        return resposta;
    }
    
    

    @PostMapping(value = "/criterios")
    public ModelAndView salvarCriterios(Criterio criterio, HttpServletRequest request){

        ModelAndView resposta = new ModelAndView("/empresa/vaga");
        HttpSession sessao = request.getSession();
        List<Criterio> criterios = (List<Criterio>)sessao.getAttribute("criterios");

        if(criterios == null){

            criterios = new ArrayList<>();
        }

        criterios.add(criterio);
        sessao.setAttribute("criterios", criterios);

        return resposta;
    }

    
    @PostMapping(value = "/publicar")
    public String publicarVaga(HttpServletRequest request, Model model) { 
    
    	HttpSession sessao = request.getSession();
    	
    	Usuario usuario = (Usuario) sessao.getAttribute("user");
    	
	    Vaga vaga = (Vaga) sessao.getAttribute("vaga");
	    
	    vaga.setIdUsuario(usuario.getId());
	    
	   List<Criterio> criterios = (List<Criterio>) sessao.getAttribute("criterios");
	     
	    vaga.setCriterioList(criterios);
	   
	   vagaService.publicarVaga(vaga);
	   
	   List<Vaga> vagas = vagaService.listarPorIdUsuario(String.valueOf(usuario.getId()));
	   
	   model.addAttribute("vagas", vagas);
	
	    return "/empresa/index";
    }

}
