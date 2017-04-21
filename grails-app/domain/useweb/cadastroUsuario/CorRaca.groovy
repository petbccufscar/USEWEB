package useweb.cadastroUsuario

class CorRaca {

    String corRaca

    static constraints = {
        corRaca nullable: false, blank: false, unique: true
    }
}
