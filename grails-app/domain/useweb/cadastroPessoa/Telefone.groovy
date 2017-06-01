package useweb.cadastroPessoa

class Telefone {

    static hasMany = [pessoas: TelefonePessoa]

    static constraints = {
        numero blank: false, size: 1..9
        ddd blank: false, size: 1..2
        ramal nullable: true
        tipo blank: false,  inList: ["Residencial", "Comercial", "Institucional", "Não Informado"]
    }

    String numero
    String ddd
    String ramal
    String tipo
}


