package useweb.cadastroPessoa

class EnderecoPessoa {

    static hasMany = [pessoas:Pessoa]
    static belongsTo = [endereco: Endereco]

    static constraints = {
        numero nullable: true
        complemento nullable: true
    }

    String numero
    String complemento
}
