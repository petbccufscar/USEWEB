package useweb.cadastroUsuario

class Escolaridade {

    static constraints = {
        escolaridade blank: false, unique: true
    }

    String escolaridade
}
