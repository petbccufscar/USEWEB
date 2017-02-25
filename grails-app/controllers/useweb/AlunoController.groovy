package useweb

import grails.plugin.springsecurity.annotation.Secured
import useweb.authentication.SystemUserController

@Secured('IS_AUTHENTICATED_FULLY')
class AlunoController {

    def index() {
        return [name: SystemUserController.currentUser.username, roles: SystemUserController.currentUser.authorities]
    }
}
