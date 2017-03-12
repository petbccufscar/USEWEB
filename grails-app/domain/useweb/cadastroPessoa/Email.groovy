package useweb.cadastroPessoa

class Email {

    static mapping = {
        id name : 'email'
    }

    static belongsTo = [pessoa:Pessoa]


    static constraints = {
        //TODO: Completar as contraints
    }

    String email
}
