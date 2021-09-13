package br.edu.infnet.model.domain;

import javax.persistence.*;

import java.util.List;

@Entity
@Table(name = "tvagas")
public class Vaga {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String cargo;
    private String formaContratacao;
    private String cidade;
    private Integer idUsuario;
    
    @OneToMany(cascade = CascadeType.ALL)
    private List<Criterio> criterioList;

    public Vaga() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getFormaContratacao() {
        return formaContratacao;
    }

    public void setFormaContratacao(String formaContratacao) {
        this.formaContratacao = formaContratacao;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public List<Criterio> getCriterioList() {
        return criterioList;
    }

    public void setCriterioList(List<Criterio> criterioList) {
        this.criterioList = criterioList;
    }

    @Override
    public String toString() {
        return "Vaga{" +
                "id=" + id +
                ", cargo='" + cargo + '\'' +
                ", formaContratacao='" + formaContratacao + '\'' +
                ", cidade='" + cidade + '\'' +
                ", idUsuario=" + idUsuario +
                ", criterioList=" + criterioList +
                '}';
    }
}
