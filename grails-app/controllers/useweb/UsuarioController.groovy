package useweb

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import useweb.authentication.SystemUserController
import useweb.cadastroPessoa.Pessoa
import useweb.cadastroUsuario.Usuario

import static org.springframework.http.HttpStatus.CREATED

@Secured('IS_AUTHENTICATED_FULLY')
class UsuarioController {

    def create(){
    // TODO: Verificar uma melhor forma de recuperar informações do usuário logado
        return [name: SystemUserController.currentUser.username, roles: SystemUserController.currentUser.authorities]
    }

    def save(){
        // Teste
        println(params)

        render "sucesso"
    }

    def show() {

    }

}
