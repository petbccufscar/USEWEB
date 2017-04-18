package useweb.cadastroPessoa

class Endereco{

    //TODO: Fazer uma pk composta (é necessário "implements serializable"?)
    // Como vamos mapear isso??
    static mapping = {

    }

    static constraints = {
        //TODO: Verificar as restrições
        cep(nullable:true, blank:true)
    }

    String cep
    String logradouro
    Integer numero
    String complemento
    String bairro
    String estado
    String cidade
}
