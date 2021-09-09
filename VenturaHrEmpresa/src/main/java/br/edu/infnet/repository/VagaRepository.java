package br.edu.infnet.repository;

import br.edu.infnet.model.domain.Vaga;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface VagaRepository extends CrudRepository<Vaga, Integer> {

    List<Vaga> findByIdUsuario(Integer idUsuario); // todas as vagas que o usuário publicou

    List<Vaga> findByCargoContainingIgnoreCase(String pesquisa);

    List<Vaga> findByCidadeContainingIgnoreCase(String pesquisa);
}
