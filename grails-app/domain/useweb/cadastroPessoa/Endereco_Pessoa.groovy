package useweb.cadastroPessoa

class Endereco_Pessoa {

    static mapping = {
    }

    static hasMany = [pessoa: Pessoa]

    static constraints = {
        numero nullable: true
        complemento nullable: true
    }

    String numero
    String complemento
}
