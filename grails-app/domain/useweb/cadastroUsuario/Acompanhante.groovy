package useweb.cadastroUsuario

import useweb.cadastroPessoa.Pessoa

class Acompanhante extends Pessoa {

    static hasMany = [usuarios: AcompanhanteUsuario]

    static constraints = {
    }
}
