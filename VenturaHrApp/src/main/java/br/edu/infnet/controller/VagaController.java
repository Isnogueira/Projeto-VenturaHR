package br.edu.infnet.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	
	 @GetMapping(value = "/vaga/publicar")
	 public String telaVaga() {
	     return "/empresa/publicar";
	 }
	 
	
    @PostMapping(value = "/vagas/salvar")
    public ModelAndView salvarVaga(Vaga vaga, HttpServletRequest request){

        ModelAndView resposta = new ModelAndView("/empresa/index");
        HttpSession sessao = request.getSession();
        sessao.setAttribute("vaga", vaga);

        return resposta;
    }

    @PostMapping(value = "/criterios/salvar")
    public ModelAndView salvarCriterios(Criterio criterio, HttpServletRequest request){

        ModelAndView resposta = new ModelAndView("/empresa/index");
        HttpSession sessao = request.getSession();
        List<Criterio> criterios = (List<Criterio>)sessao.getAttribute("criterios");

        if(criterios == null){

            criterios = new ArrayList<>();
        }

        criterios.add(criterio);
        sessao.setAttribute("criterios", criterios);

        return resposta;
    }

    
    @PostMapping(value = "/vaga/publicar")
    public String post(HttpServletRequest request) {
    	
	    HttpSession session = request.getSession();
	    
	    Usuario usuario = (Usuario) session.getAttribute("user");
	    
	    Vaga vaga = (Vaga) session.getAttribute("vaga");
	    
	    List<Criterio> criterio = (List) session.getAttribute("criterio");
	    
	    vaga.setCriterioList(criterio);
	    
	   // vagaService.publicarVaga(vaga);
	    return "redirect:/empresa/index/" + usuario.getId();
    }

}
