package useweb.cadastroPessoa

class Cidade {

    static mapping = {
    }

    static hasMany = [enderecos: Endereco]
    static belongsTo = [estado: Estado]

    static constraints = {
        cidade blank: false
        codigoIBGE blank: false
    }

    String cidade
    String codigoIBGE
}
