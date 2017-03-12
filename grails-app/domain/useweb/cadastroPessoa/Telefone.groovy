package useweb.cadastroPessoa

class Telefone {

    static mapping = {
        //TODO: Fazer uma pk composta (é necessário "implements serializable"?)
        //id composite: ['numero', 'ddd']
    }

    static constraints = {
        //TODO: Verificar as restrições
    }

    String numero
    String ddd
    String tipo
    String observacao
}
