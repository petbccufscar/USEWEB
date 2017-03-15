package useweb.authentication

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_FULLY')
class SystemUserController {
    def springSecurityService
    static currentUser

    def index() {
        currentUser = springSecurityService.principal

        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            redirect controller: 'admin', action: 'index'
        } else if (SpringSecurityUtils.ifAllGranted('ROLE_DOCENTE')) {
            redirect controller: 'docente', action: 'index'
        } else if (SpringSecurityUtils.ifAllGranted('ROLE_ALUNO')) {
            redirect controller: 'aluno', action: 'index'
        } else if (SpringSecurityUtils.ifAllGranted('ROLE_TERCEIRIZADO')) {
            redirect controller: 'terceirizado', action: 'index'
        }
    }

    def dadosCadastrais()
    {
        return [name: SystemUserController.currentUser.username, roles: SystemUserController.currentUser.authorities]
    }
}
