package useweb.cadastroPessoa

class Sexo {

    static mapping = {
        id name : 'tipo'
    }

    static constraints = {
        tipo(blank: false, unique: true)
    }

    String tipo
}
