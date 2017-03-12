package useweb.cadastroPessoa

class Endereco {

    //TODO: Fazer uma pk composta (é necessário "implements serializable"?)
    static mapping = {

    }

    //TODO: Verificar a associação com endereço auxiliar, como fazê-la
//    static hasOne = [enderecoAuxiliar: EnderecoAuxiliar]

    static constraints = {
        //TODO: Verificar as restrições
    }

    Integer numero
    String complemento
}
