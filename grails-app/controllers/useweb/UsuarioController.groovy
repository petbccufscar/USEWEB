package useweb

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import useweb.authentication.SystemUserController
import useweb.cadastroPessoa.Endereco
import useweb.cadastroUsuario.Usuario

@Secured('IS_AUTHENTICATED_FULLY')
class UsuarioController {

    def create() {
        // TODO: Verificar uma melhor forma de recuperar informações do usuário logado
        return [name: SystemUserController.currentUser.username, roles: SystemUserController.currentUser.authorities]
    }

    @Transactional
    def save() {
        println(params)
        def dadosGeraisParams = [nomeCompleto   : params.nomeCompleto,
                                 nomeSocial     : params.nomeSocial,
                                 dataNascimento : params.dataNascimento,
                                 dataEstimada   : params.dataEstimada,
                                 sexo           : params.sexo,
                                 cpf            : params.cep,
                                 rg             : params.rg,
                                 orgaoEmissor   : params.orgaoEmissor,
                                 nomeMae        : params.nomeMae,
                                 cns            : params.cns,
                                 corRaca        : params.corRaca,
                                 etnia          : params.etnia,
                                 escolaridade   : params.escolaridade,
                                 profissao      : params.profissao,
                                 statusProfissao: params.statusProfissao,
                                 observacao     : params.observacao]

        def enderecoParams = [cep        : params.endereco_cep,
                              logradouro : params.endereco_logradouro,
                              numero     : params.endereco_numero,
                              complemento: params.endereco_complemento,
                              estado     : params.endereco_estado,
                              cidade     : params.endereco_cidade,
                              bairro     : params.endereco_bairro]

        def ContatoParams = [telefones:params.telefone, emails: params.email]

        println(enderecoParams)

        def endereco = new Endereco(enderecoParams)
        println endereco.numero
//        endereco.save(flush:true,failOnError: true)

        def usuario = new Usuario(dadosGeraisParams+['endereco':endereco])
        println(dadosGeraisParams+['endereco':endereco])
        usuario.save(flush:true,failOnError: true)

        render "sucesso"
    }

    def show() {

    }

}
