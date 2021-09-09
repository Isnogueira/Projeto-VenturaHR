package br.edu.infnet.service;

import br.edu.infnet.model.domain.Vaga;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Service
@FeignClient(url = "http://localhost:8083/vagas", name="VagasWebService")
public interface VagaService {

    @GetMapping(value = "/usuario/{idUsuario}")
    List<Vaga> listarPorIdUsuario(@PathVariable Integer idUsuario);
    
   // @PostMapping
    //Vaga publicarVaga(Vaga vaga);
}   