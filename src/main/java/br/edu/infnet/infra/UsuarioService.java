package br.edu.infnet.infra;

import br.edu.infnet.model.domain.Usuario;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

public class UsuarioService {

    private final String REST_URI = "http://localhost:8082/usuarios";

    private final Client client = ClientBuilder.newClient();

    public Usuario obterPorId(String id){

        return (Usuario) client.target(REST_URI).path(id).path("json").request(MediaType.APPLICATION_JSON).get(Usuario.class);
    }
}
