package useweb

import grails.plugin.springsecurity.annotation.Secured
import useweb.authentication.SystemUserController

@Secured('IS_AUTHENTICATED_FULLY')
class UsuarioController {
    def create(){
    // TODO: Verificar uma melhor forma de recuperar informações do usuário logado
        return [name: SystemUserController.currentUser.username, roles: SystemUserController.currentUser.authorities]
    }

    def show() {

//        Teste
        println(params)

        render "sucesso"
    }
}
