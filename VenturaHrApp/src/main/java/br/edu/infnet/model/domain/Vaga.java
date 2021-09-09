package br.edu.infnet.model.domain;

import java.util.List;

public class Vaga {

    private Integer id;
    private String cargo;
    private String cidade;
    private Integer formaContratacao;
    private Integer idUsuario;
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

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public Integer getFormaContratacao() {
        return formaContratacao;
    }

    public void setFormaContratacao(Integer formaContratacao) {
        this.formaContratacao = formaContratacao;
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
}

