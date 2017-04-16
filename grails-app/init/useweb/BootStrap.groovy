package useweb

import useweb.authentication.SystemUser
import useweb.authentication.SystemUserRole
import useweb.authentication.Role
import useweb.cadastroUsuario.CorRaca
import useweb.cadastroUsuario.Etnia

class BootStrap {

    def init = { servletContext ->

//      Definição dos papéis
        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def docenteRole = new Role(authority: 'ROLE_DOCENTE').save()
        def alunoRole = new Role(authority: 'ROLE_ALUNO').save()
        def terceirizadoRole = new Role(authority: 'ROLE_TERCEIRIZADO').save()

//      Definição dos usuarios
        def adminUser = new SystemUser(username: 'admin', password: '123').save()
        SystemUserRole.create adminUser, adminRole

        def docenteUser = new SystemUser(username: 'docente', password: '123').save()
        SystemUserRole.create docenteUser, docenteRole

        def alunoUser = new SystemUser(username: 'aluno', password: '123').save()
        SystemUserRole.create alunoUser, alunoRole

        def terceirizadoUser = new SystemUser(username: 'terceirizado', password: '123').save()
        SystemUserRole.create terceirizadoUser, terceirizadoRole

        SystemUserRole.withSession {
            it.flush()
            it.clear()
        }

        assert SystemUser.count() == 4
        assert Role.count() == 4
        assert SystemUserRole.count() == 4

        // Tipos predefinidos
        new Etnia(etnia: "Branco").save()
        new Etnia(etnia: "Negro").save()
        new Etnia(etnia: "Indígena").save()
        new Etnia(etnia: "Pardo").save()
        new Etnia(etnia: "Mulato").save()
        new Etnia(etnia: "Caboclo").save()
        new Etnia(etnia: "Cafuzo").save()
        new Etnia(etnia: "Não declarado").save()
        new Etnia(etnia: "Não sei").save()

        new CorRaca(corRaca: "Branco").save()
        new CorRaca(corRaca: "Pardo").save()
        new CorRaca(corRaca: "Preto").save()
        new CorRaca(corRaca: "Amarelo").save()
        new CorRaca(corRaca: "Indígena").save()
        new CorRaca(corRaca: "Não declarado").save()
        new CorRaca(corRaca: "Não sei").save()
        /*
        new Genero(genero : "Bissexual").save()
        new Genero(genero : "Heterossexual").save()
        new Genero(genero : "Homossexual").save()
        new Genero(genero : "Assexual").save()
        new Genero(genero : "Não declarado").save()
        new Genero(genero : "Não sei").save()
        */



    }

    def destroy = {
    }
}
