package useweb

import useweb.authentication.SystemUser
import useweb.authentication.SystemUserRole
import useweb.authentication.Role

class BootStrap {

    def init = { servletContext ->

//      Definição dos papéis
        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def docenteRole = new Role(authority: 'ROLE_DOCENTE').save()
        def alunoRole = new Role(authority: 'ROLE_ALUNO').save()
        def terceirizadoRole = new Role(authority: 'ROLE_TERCEIRIZADO').save()

//      Definição dos usuarios
        def adminUser = new SystemUser(username: 'admin', password: 'admin').save()
        SystemUserRole.create adminUser, adminRole

        def docenteUser = new SystemUser(username: 'docente', password: 'docente').save()
        SystemUserRole.create docenteUser, docenteRole

        def alunoUser = new SystemUser(username: 'aluno', password: 'aluno').save()
        SystemUserRole.create alunoUser, alunoRole

        def terceirizadoUser = new SystemUser(username: 'terceirizado', password: 'terceirizado').save()
        SystemUserRole.create terceirizadoUser, terceirizadoRole

        SystemUserRole.withSession {
            it.flush()
            it.clear()
        }

        assert SystemUser.count() == 4
        assert Role.count() == 4
        assert SystemUserRole.count() == 4
    }

    def destroy = {
    }
}
