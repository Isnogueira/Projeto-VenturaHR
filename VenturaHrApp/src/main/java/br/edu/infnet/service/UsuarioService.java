package br.edu.infnet.service;


import br.edu.infnet.model.domain.Usuario;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Service
@FeignClient(url = "http://localhost:8082/usuarios", name="UsuarioWebService")
public interface UsuarioService {

    @GetMapping(value = "/email/{email}")
    Usuario obterPorEmail(@PathVariable("email") String email);
    
    @GetMapping(value = "/id/{id}")
    Usuario obterPorId(Integer id);

    @PostMapping
    Usuario criarConta(Usuario usuario);

}
