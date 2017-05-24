package useweb.cadastroPessoa

class Estado {

    static mapping = {
    }

    static hasMany = [cidades: Cidade]

    static constraints = {
        sigla blank: false, size: 1..2
        estado blank: false
        codigoIBGE blank: false
    }

    String sigla
    String estado
    String codigoIBGE
}
