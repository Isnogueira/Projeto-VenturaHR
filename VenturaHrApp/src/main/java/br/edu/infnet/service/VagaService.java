package br.edu.infnet.service;

import br.edu.infnet.model.domain.Vaga;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import java.util.List;


@FeignClient(url = "http://localhost:8083/vagas", name = "usuarioWebService")
public interface VagaService {

    @GetMapping(value ="/usuario/{idUsuario}")
    List<Vaga> listarPorIdUsuario(@PathVariable String idUsuario);
    
    
    @PostMapping
    Vaga publicarVaga(Vaga vaga);
}   