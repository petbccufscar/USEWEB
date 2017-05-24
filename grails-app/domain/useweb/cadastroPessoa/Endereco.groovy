package useweb.cadastroPessoa

class Endereco {

    static mapping = {
    }

    static belongsTo = [cidade: Cidade]
    static hasMany = []

    static constraints = {
        cep blank: false, size: 1..8
        logradouro blank: false
        bairro blank: false
    }

    String cep
    String logradouro
    String bairro
}
