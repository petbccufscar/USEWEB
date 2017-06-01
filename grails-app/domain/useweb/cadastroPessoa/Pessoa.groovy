package useweb.cadastroPessoa

class Pessoa {

    static mapping = {
    }

    static hasMany = [telefones: TelefonePessoa, documentos:Documento, deficiencias:DeficienciaPessoa]

    static constraints = {
        nome blank: false, size: 1..100
        nomeSocial nullable: true, size: 1..100
        dataNascimento blank: false
        dataNaoConfirmada blank: false
        dataCadastro blank: false

        sexo inList: ["Feminino", "Masculino", "Indeterminado", "Não Informado"]
        tipoSanguineo inList: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]

        email1 nullable: false
        email2 nullable: false

        corRaca nullable: false
        etnia nullable: true

        orientacaoSexual nullable: false
        genero nullable: false

        enderecoPessoa nullable: false
    }

    String nome
    String nomeSocial
    Date dataNascimento
    boolean dataNaoConfirmada
    Date dataCadastro
    String sexo
    String tipoSanguineo

    String email1
    String email2

    CorRaca corRaca
    Etnia etnia
    OrientacaoSexual orientacaoSexual
    Genero genero
    EnderecoPessoa enderecoPessoa
}