package useweb.cadastroPessoa

class Endereco {

    static belongsTo = [cidade: Cidade]

    static hasMany = [enderecoPessoa:EnderecoPessoa]

    static constraints = {
        cep blank: false, size: 1..8
        logradouro blank: false
        bairro blank: false
    }

    String cep
    String logradouro
    String bairro
}
