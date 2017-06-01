package useweb.cadastroPessoa


class Etnia {

    static constraints = {
        etnia nullable: false, blank: false, unique: true
    }

    String etnia
}
