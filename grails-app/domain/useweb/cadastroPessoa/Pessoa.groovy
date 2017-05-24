package useweb.cadastroPessoa

class Pessoa {

    static mapping = {
    }

    static hasMany = [telefones: Telefone]

    static constraints = {
        nome blank: false, size: 1..100
        nomeSocial nullable: true, size: 1..100
        rg nullable: true
        cpf nullable: true, size: 1..11
        dataNascimento blank: false
        dataNaoConfirmada blank: false
        dataCadastro blank: false

        email1 nullable: false
        email2 nullable: false

        sexo inList: ["Feminino", "Masculino", "Indeterminado"]
        tipoSanguineo inList: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]
    }

    String nome
    String nomeSocial
    String rg
    String cpf
    Date dataNascimento
    boolean dataNaoConfirmada
    Date dataCadastro
    String sexo
    String tipoSanguineo

    String email1
    String email2

    String enderecoPessoa
}