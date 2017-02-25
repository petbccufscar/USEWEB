package useweb

import grails.plugin.springsecurity.annotation.Secured
import useweb.authentication.SystemUserController

//TODO: Pesquisar sobre definição de acesso (melhor com @secure ou mapeamento?)
@Secured('IS_AUTHENTICATED_FULLY')
class DocenteController {
    def index() {
        return [name: SystemUserController.currentUser.username, roles: SystemUserController.currentUser.authorities]
    }
}
