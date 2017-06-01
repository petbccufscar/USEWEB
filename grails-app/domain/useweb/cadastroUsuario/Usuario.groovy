package useweb.cadastroUsuario

import useweb.cadastroPessoa.Pessoa

class Usuario extends Pessoa {

    static hasMany = [acompanhantes: AcompanhanteUsuario]

    static constraints = {
        cns blank: false
        nomeResponsavel blank: false
        profissao nullable: true
        statusProfissao nullable: true, inList: ["Empregador",
                                                 "Assalariado com carteira de trabalho",
                                                 "Assalariado sem carteira de trabalho",
                                                 "Autônomo com previdência social",
                                                 "Autônomo sem previdência social",
                                                 "Aposentado/Pensionista",
                                                 "Desempregado",
                                                 "Não trabalha",
                                                 "Servidor público/militar",
                                                 "Outro"]

        inativo nullable: false
        dataInatividade nullable: true
        motivoInatividade nullable: true
        observacao nullable: true

        escolaridade nullable: false
    }

    String cns
    String nomeResponsavel
    String profissao
    String statusProfissao
    boolean inativo
    Date dataInatividade
    String motivoInatividade
    String observacao

    Escolaridade escolaridade
}
