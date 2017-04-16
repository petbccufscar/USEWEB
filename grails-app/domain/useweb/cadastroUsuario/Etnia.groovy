package useweb.cadastroUsuario


class Etnia {

    String etnia

    static constraints = {
        etnia nullable: false, blank: false, unique: true
    }
}
