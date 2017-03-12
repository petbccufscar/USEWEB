package useweb.cadastroPessoa

class TipoLogradouro {

    static mapping = {
        id name : 'tipo'
    }

    static constraints = {
        tipo(blank: false, unique: true)
    }

    String tipo
}
