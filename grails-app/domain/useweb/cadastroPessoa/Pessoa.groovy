package useweb.cadastroPessoa

class Pessoa {

    static mapping = {
        id name: 'numeroCadastro'
    }

    static hasMany = [emails : Email, telefones: Telefone]

    static constraints = { //Aqui vão regras de validação
        nomeCompleto(blank:false, size:1..20)
        cpf(nullable:false)
        rg(nullable:true)
        sexo(blank: true, inList: ["Feminino", "Masculino", "Não determinado"])
        //TODO: Completar e verificar as restrições
    }

    String nomeCompleto
    Integer numeroCadastro
    String nomeSocial
    Date dataNascimento
    Date dataCadastro
    String cpf
    String rg
    String orgaoEmissor
    Endereco endereco
    String sexo
}
