package br.edu.infnet.controller;

import br.edu.infnet.model.domain.Criterio;
import br.edu.infnet.model.domain.Vaga;
import br.edu.infnet.repository.VagaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.convert.Jsr310Converters.StringToLocalDateConverter;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = {"/vagas"})
public class VagaController {

    @Autowired
    private VagaRepository vagaRepository;
    
       	
    @GetMapping(value = "/usuario/{idUsuario}")
    public ResponseEntity listarPorIdUsuario(@PathVariable Integer idUsuario){
        
    	List<Vaga> lista = vagaRepository.findByIdUsuario(idUsuario);

        return ResponseEntity.ok().body(lista);
    }

    @PostMapping
    public ResponseEntity publicarVaga(@RequestBody Vaga vaga){

        ResponseEntity retorno = ResponseEntity.badRequest().build();

        List<Criterio> listaCriterio = vaga.getCriterioList();

        if(listaCriterio != null && !listaCriterio.isEmpty()){

            for(Criterio criterio : listaCriterio){

                criterio.setVaga(vaga);
            }

            Vaga vagaGravada = vagaRepository.save(vaga);
            retorno = ResponseEntity.status(HttpStatus.CREATED).body(vagaGravada);
        }
        return retorno;
    }
}
