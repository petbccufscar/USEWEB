package useweb.cadastroUsuario

import useweb.cadastroPessoa.Pessoa

class Usuario extends Pessoa {

    static mapping = {

    }

    //TODO: Usuario também tem um "cuidador", verificar como fazer essa associação
//    static hasMany = []

    static constraints = {
    }

    Integer cns
    String nomeMae
    String profissao
    String statusProfissao
    String statusInatividade
    Date dataInatividade
    String motivoInatividade
    String observacao
    Escolaridade escolaridade
    Etnia etnia
    CorRaca corRaca

}
