package useweb.cadastroPessoa

class EnderecoAuxiliar {

    static mapping = {
        id name : 'cep'
    }


    static constraints = {
        //TODO: Verificar as restrições
    }

    String cep
    String logradouro
    String estado
    String cidade
    TipoLogradouro tipoLogradouro
}
