package useweb.pessoa

class Telefone {

    static mapping = {
//        id composite: ['numero', 'ddd']
    }

    static constraints = {
    }

    String numero
    String ddd
    String tipo
    String observacao
}
