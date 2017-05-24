package useweb.cadastroPessoa

class Email {

    static mapping = {
        id name : "email"
    }

    static belongsTo = [pessoa:Pessoa]


    static constraints = {
        email blank: false, size: 1..100
    }

    String email
}
