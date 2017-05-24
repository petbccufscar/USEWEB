package useweb.cadastroPessoa

class Telefone {

    static mapping = {
    }

    static hasMany = [pessoa: Pessoa]

    static constraints = {
        numero blank: false, size: 1..9
        ddd blank: false, size: 1..2
        ramal nullable: true
        tipo blank: false,  inList: ["Residencial", "Comercial", "Institucional", "Não Informado"]
        observacao nullable: true
    }

    String numero
    String ddd
    String ramal
    String tipo
    String observacao
}


