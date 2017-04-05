<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="useweb.cadastroPessoa.Pessoa" %>
<head>
    <meta name="layout" content="defaultTheme"/>
    <title>Cadastrar</title>
    <asset:stylesheet src="SmartWizard/css/gsdk-bootstrap-wizard.css"/>
    <asset:stylesheet src="default/general.css"/>
    <asset:stylesheet src="datatables/datatables.net-bs/css/dataTables.bootstrap.min.css"/>
    <asset:stylesheet src="datatables.net-buttons-bs/css/buttons.bootstrap.min.css"/>
    <asset:stylesheet src="datatables/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"/>
    <asset:stylesheet src="datatables/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"/>
    <asset:stylesheet src="datatables/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"/>

</head>

<body>
<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="page-title">
            <div class="title_left">
                <h3>Cadastrar Usuário</h3>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        %{--  Início Wizard container  --}%
                        <div class="wizard-container">
                            <div class="wizard-card" data-color="blue" id="wizardProfile">

                                <g:form name="cadastroUsuario" controller="usuario">

                                    <div class="wizard-navigation">
                                        <ul>
                                            <li><a href="#dadosGerais" data-toggle="tab">Dados Gerais</a></li>
                                            <li><a href="#endereco" data-toggle="tab">Endereço</a></li>
                                            <li><a href="#contato" data-toggle="tab">Contato</a></li>
                                            <li><a href="#acompanhante" data-toggle="tab">Acompanhante</a></li>
                                        </ul>
                                    </div>

                                %{--Início Wizard Content--}%
                                    <div class="tab-content">
                                        %{--Início Dados Gerais--}%
                                        <div class="tab-pane" id="dadosGerais">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="nome_completo"
                                                        > Nome Completo<small>(required)</small>
                                                        </label>
                                                        <input name="nomeCompleto" id="nome_completo" type="text"
                                                               class="form-control" required>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="nome_social"
                                                        >Nome Social</label>
                                                        <input name="nomeSocial" id="nome_social" type="text"
                                                               class="form-control">
                                                    </div>

                                                    %{--TODO: Arrumar representação da data--}%
                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label"
                                                               for="data_nascimento"
                                                        >Data de Nascimento</label>
                                                        <input name="cep" id="data_nascimento" type="text"
                                                               class="form-control"
                                                               data-inputmask="'mask': '99/99/9999'">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="idade"
                                                        >Idade</label>
                                                        <input name="idade" id="idade" type="number" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <div class="checkbox">
                                                            <br/>
                                                            <label class="control-label"
                                                                   for="data_estimada">%{--TODO: trocar data_estimada e dataEstimada --}%
                                                                <input name="dataEstimada" id="data_estimada"
                                                                       type="checkbox"
                                                                       class="flat"
                                                                >Data não confirmada
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="clearfix"></div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="sexo"
                                                        >Sexo</label>
                                                        %{--<input name="sexo" id="sexo" type="text" class="form-control">--}%
                                                        <g:select name="sexo" id="sexo" class="form-control"
                                                                  from="${Pessoa.constrainedProperties.sexo.inList}"/>
                                                    </div>

                                                    <div class="clearfix"></div>

                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="cpf"
                                                        >CPF</label>
                                                        <input name="cep" id="cpf" type="text"
                                                               class="form-control"
                                                               data-inputmask="'mask': '999.999.999-99'">
                                                    </div>

                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="rg"
                                                        >RG</label>
                                                        <input name="rg" id="rg" type="text" class="form-control" pattern="[a-zA-Z0-9\s]+">
                                                    </div>

                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label"
                                                               for="orgao_emissor"
                                                        >Orgão Emissor</label>
                                                        <input name="orgaoEmissor" id="orgao_emissor" type="text"
                                                               class="form-control">
                                                    </div>

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="nome_mae"
                                                        >Nome da Mãe</label>
                                                        <input name="nomeMae" id="nome_mae" type="text"
                                                               class="form-control">
                                                    </div>


                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="cns"
                                                        >CNS</label>
                                                        <input name="cns" id="cns" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="cor_raca"
                                                        >Cor/Raça</label>
                                                        <g:select name="cor_raca" id="cor_raca" class="form-control"
                                                                  from="${Pessoa.constrainedProperties.sexo.inList}"/>
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="etnia">Etnia</label>
                                                        <g:select name="etnia" id="etnia" class="form-control"
                                                                  from="${Pessoa.constrainedProperties.sexo.inList}"/>
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label"
                                                               for="escolaridade"
                                                        >Escolaridade</label>
                                                        <g:select name="cor_raca" id="escolaridade" class="form-control"
                                                                  from="${Pessoa.constrainedProperties.sexo.inList}"/>
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="profissao"
                                                        >Profissão</label>
                                                        <input name="profissao" id="profissao" type="text"
                                                               class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label"
                                                               for="status_profissao"
                                                        >Status Profissão</label>
                                                        <g:select name="cor_raca" id="status_profissao" class="form-control"
                                                                  from="${Pessoa.constrainedProperties.sexo.inList}"/>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="observacao"
                                                        >Observações de Cadastro</label>
                                                        <textarea rows="5" name="observacao" id="observacao"
                                                                  class="form-control"></textarea>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        %{--Fim Dados Gerais--}%

                                        %{--Início Endereço--}%
                                        <div class="tab-pane" id="endereco">

                                            <div class="row">
                                                %{--CEP--}%
                                                <div class="col-md-2 col-sm-2 col-xs-2 form-group">
                                                    <div class="col-md-10 col-sm-10 col-xs-10 form-group">
                                                        <label class="control-label" for="endereco_cep">CEP:</label>
                                                        <input name="cep" id="endereco_cep" type="text"
                                                               class="form-control"
                                                               data-inputmask="'mask': '99999-999'">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                %{--Logradouro--}%
                                                <div class="col-md-6 col-sm-6 col-xs-6">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_logradouro">Logradouro:</label>
                                                        <input name="endereco_logradouro" id="endereco_logradouro"
                                                               type="text" class="form-control">
                                                    </div>
                                                </div>
                                                %{--Numero--}%
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_numero">Numero:</label>
                                                        <input name="endereco_numero" id="endereco_numero" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                %{--Complemento--}%
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_complemento">Complemento:</label>
                                                        <input name="endereco_complemento" id="endereco_complemento"
                                                               type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                %{--Estado--}%
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_estado">Estado:</label>
                                                        <input name="endereco_estado" id="endereco_estado" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                %{--Cidade--}%
                                                <div class="col-md-5 col-sm-5 col-xs-5">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_cidade">Cidade:</label>
                                                        <input name="endereco_cidade" id="endereco_cidade" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                %{--Bairro--}%
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="endereco_bairro">Bairro:</label>
                                                        <input name="endereco_bairro" id="endereco_bairro" type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        %{--aba contato--}%
                                        <div class="tab-pane" id="contato">

                                            <div class="content_x">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">

                                                    %{--campo telefone--}%
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <div id="telefone" class="x_panel">
                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                    <label class="control-label" for="tipoTelefone">Telefone</label>
                                                                    <input name="tipoTelefone" id="tipoTelefone" type="text" placeholder="Residencial" class="form-control">
                                                                </div>

                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                    <span class="fa fa-phone form-control-feedback left" aria-hidden="true"></span>
                                                                    <input name="numeroTelefone" id="numeroTelefone" type="text" class="form-control has-feedback-left" placeholder="(xx) xxxxx-xxxx">
                                                                </div>

                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                    <label class="control-label" for="observacaoTelefone">Observações</label>
                                                                    <textarea name="observacaoTelefone" id="observacaoTelefone" class="form-control" placeholder="Aqui vão as observações" style="resize:none;"></textarea>
                                                                </div>
                                                        </div>

                                                        %{--botão mais--}%
                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <i onclick="insereCaixaTelefone()" class="fa fa-plus-square"></i>
                                                        </div>
                                                    </div>
                                                    %{--fim campo telefone--}%

                                                    %{--campo email--}%
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <div id="email" class="x_panel">
                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                    <label class="control-label" for="enderecoEmail">Email</label>
                                                                    <input name="enderecoEmail" id="enderecoEmail" type="label" class="form-control" placeholder="exemplo@email.com">
                                                                </div>
                                                        </div>

                                                        %{--botão mais--}%
                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <i onclick="insereCaixaEmail()" class="fa fa-plus-square"></i>
                                                        </div>
                                                    </div>
                                                    %{--fim campo email--}%

                                                </div>
                                            </div>
                                            </div>

                                        </div>
                                        %{--fim aba contato--}%


                                        <div class="tab-pane" id="acompanhante">
                                            <div class="">

                                                <div class="clearfix"></div>

                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                        <div class="x_panel">

                                                            <div class="x_content">
                                                                <table id="datatable-fixed-header" class="table table-striped table-bordered">
                                                                    <thead>
                                                                    <tr>
                                                                        <!-- <th>Resumo</th> -->
                                                                        <th>Nome</th>
                                                                        <th>Rg</th>
                                                                        <th>Telefone</th>
                                                                        <th>Endereco</th>
                                                                    </tr>
                                                                    </thead>

                                                                    <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            Joao Victor</td>
                                                                        <td>42.865.159-5</td>
                                                                        <td>(14)95466-4646</td>
                                                                        <td>Rua Nicolau </td>
                                                                        <td><a class="btn btn-info" data-toggle="modal" data-target=".infoAcompanhante1"><i class="fa fa-info"></i></a>

                                                                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target=".cancelarAcompanhante"><i class="fa fa-close"></i></button>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>
                                                                            Joao Victor</td>
                                                                        <td>99.666.111-2</td>
                                                                        <td>(14)12365-4878</td>
                                                                        <td>Av Sao Carlos </td>
                                                                        <td><a class="btn btn-info" data-toggle="modal" data-target=".infoAcompanhante2"><i class="fa fa-info"></i></a>

                                                                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target=".cancelarAcompanhante"><i class="fa fa-close"></i></button>
                                                                        </td>
                                                                    </tr>



                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target=".infoAcompanhante1">Adicionar acompanhante</button>
                                            <!-- Modal do acompanhante-->
                                            <div class="modal fade infoAcompanhante1" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">

                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalLabel">Cadastro do acompanhante</h4>
                                                        </div>

                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">

                                                            <div id="myTabContent" class="tab-content">
                                                                <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="realizar-tab">
                                                                    <div class="x_content">
                                                                        <div class="row">
                                                                            <form class="form-vertical">

                                                                                <div class="x_panel">
                                                                                    <h3 class="modal-title" id="myModalLabelDadosGerais">Dados gerais</h3>
                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                        <label class="control-label"
                                                                                               for="nome_completo_acompanhante1"
                                                                                        >Nome Completo <small>(required)</small>
                                                                                        </label>
                                                                                        <input name="nomeCompleto" id="nome_completo_acompanhante1" type="text"
                                                                                               class="form-control" required>
                                                                                    </div>

                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                        <label class="control-label"
                                                                                               for="nome_social_acompanhante1"
                                                                                        >Nome Social</label>
                                                                                        <input name="nomeSocial" id="nome_social_acompanhante1" type="text"
                                                                                               class="form-control">
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                                                        <label class="control-label"
                                                                                               for="data_nascimento_acompanhante1"
                                                                                        >Data de Nascimento</label>
                                                                                        <input name="data_nascimento" id="data_nascimento_acompanhante1" type="text"
                                                                                               class="form-control"
                                                                                               data-inputmask="'mask': '99/99/9999'">
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                                                        <label class="control-label" for="cpf_acompanhante1"
                                                                                        >CPF</label>
                                                                                        <input name="cpf" id="cpf_acompanhante1" type="number"
                                                                                               class="form-control"
                                                                                               data-inputmask="'mask': '999.999.999-99'">
                                                                                    </div>
                                                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                                                        <label class="control-label" for="rg_acompanhante1"
                                                                                        >RG</label>
                                                                                        <input name="rg" id="rg_acompanhante1" type="text" class="form-control" pattern="[a-zA-Z0-9\s]+">
                                                                                    </div>

                                                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                                                        <label class="control-label"
                                                                                               for="orgao_emissor_acompanhante1"
                                                                                        >Orgão Emissor</label>
                                                                                        <input name="orgaoEmissor" id="orgao_emissor_acompanhante1" type="text"
                                                                                               class="form-control">
                                                                                    </div>

                                                                                </div><!--panel1-->


                                                                                <div class="x_panel">
                                                                                    <h3 class="modal-title" id="myModalLabelEndereco">Endereço</h3>

                                                                                    <div class="row">
                                                                                        %{--CEP--}%
                                                                                        <div class="col-md-2 col-sm-2 col-xs-2 form-group">
                                                                                            <div class="col-md-10 col-sm-10 col-xs-10 form-group">
                                                                                                <label class="control-label" for="endereco_cep_acompanhante1">CEP:</label>
                                                                                                <input name="cep" id="endereco_cep_acompanhante1" type="text"
                                                                                                       class="form-control"
                                                                                                       data-inputmask="'mask': '99999-999'">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="row">
                                                                                        %{--Logradouro--}%
                                                                                        <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_logradouro_acompanhante1">Logradouro:</label>
                                                                                                <input name="endereco_logradouro" id="endereco_logradouro_acompanhante1"
                                                                                                       type="text" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                        %{--Numero--}%
                                                                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_numero_acompanhante1">Numero:</label>
                                                                                                <input name="endereco_numero" id="endereco_numero_acompanhante1" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="row">
                                                                                        %{--Estado--}%
                                                                                        <div class="col-md-3 col-sm-3 col-xs-3">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_estado_acompanhante1">Estado:</label>
                                                                                                <input name="endereco_estado" id="endereco_estado_acompanhante1" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                        %{--Cidade--}%
                                                                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_cidade_acompanhante1">Cidade:</label>
                                                                                                <input name="endereco_cidade" id="endereco_cidade_acompanhante1" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                        %{--Bairro--}%
                                                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_bairro_acompanhante1">Bairro:</label>
                                                                                                <input name="endereco_bairro" id="endereco_bairro_acompanhante1" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div> <!--panel2-->

                                                                                <div class="x_panel">
                                                                                    <h3 class="modal-title" id="myModalLabelContato">Contato</h3>
                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                        <label class="control-label"
                                                                                               for="tipoTelefone_acompanhante1">Telefone</label>
                                                                                        <input name="tipoTelefone" id="tipoTelefone_acompanhante1"
                                                                                               type="text" placeholder="Residencial"
                                                                                               class="form-control">
                                                                                    </div>

                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                        <span class="fa fa-phone form-control-feedback left"
                                                                                              aria-hidden="true"></span>
                                                                                        <input name="numeroTelefone" id="numeroTelefone_acompanhante1"
                                                                                               type="text"
                                                                                               class="form-control has-feedback-left"
                                                                                               placeholder="(xx) xxxxx-xxxx">
                                                                                    </div>
                                                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                        <div class="x_panel">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="enderecoEmail_Acompanhate1">Email</label>
                                                                                                <input name="enderecoEmail" id="enderecoEmail_Acompanhate1"
                                                                                                       type="email" class="form-control"
                                                                                                       placeholder="exemplo@email.com">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>



                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div> <!--<div class="col-md-8 col-sm-8 col-xs-8 form-group">-->

                                                        <div class="clearfix"></div>



                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal do acompanhante-->

                                            <!-- Modal do acompanhante--> <!--<div class="modal fade infoAcompanhante2" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">

                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalLabel1">Cadastro do acompanhante</h4>
                                                        </div>

                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">

                                                            %{--  Início Wizard container  --}%
                                                            <div class="wizard-container">
                                                                <div class="wizard-card" data-color="blue" id="wizardProfile2">

                                                                    <g:form name="cadastroAcompanhante" controller="acompanhante">

                                                <div class="wizard-navigation">
                                                    <ul>
                                                        <li><a href="#dadosGerais1" data-toggle="tab">Dados Gerais</a></li>
                                                        <li><a href="#endereco1" data-toggle="tab">Endereço</a></li>
                                                        <li><a href="#contato1" data-toggle="tab">Contato</a></li>
                                                    </ul>
                                                </div>

                                            %{--Início Wizard Content--}%
                                                <div class="tab-content">
                                            %{--Início Dados Gerais--}%
                                                <div class="tab-pane" id="dadosGerais1">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                <label class="control-label"
                                                                       for="nome_completo_acompanhante2"
                                                                       value="Nome Completo"> <small>(required)</small>
                                                                </label>
                                                                <input name="nomeCompleto" id="nome_completo_acompanhante2" type="text"
                                                                       class="form-control" required>
                                                            </div>

                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                <label class="control-label"
                                                                       for="nome_social_acompanhante2"
                                                                       value="Nome Social"></label>
                                                                <input name="nomeSocial" id="nome_social_acompanhante2" type="text"
                                                                       class="form-control">
                                                            </div>
                                                            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                                <label class="control-label"
                                                                       for="data_nascimento_acompanhante2"
                                                                       value="Data de Nascimento"></label>
                                                                <input name="data_nascimento" id="data_nascimento_acompanhante2" type="number"
                                                                       class="form-control"
                                                                       data-inputmask="'mask': '99/99/9999'">
                                                            </div>
                                                            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                                <label class="control-label" for="cpf_acompanhante2"
                                                                       value="CPF"></label>
                                                                <input name="cpf" id="cpf_acompanhante2" type="number"
                                                                       class="form-control"
                                                                       data-inputmask="'mask': '999.999.999-99'">
                                                            </div>
                                                            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                                <label class="control-label" for="rg_acompanhante2"
                                                                       value="RG"></label>
                                                                <input name="rg" id="rg_acompanhante2" type="text" class="form-control" pattern="[a-zA-Z0-9\s]+">
                                                            </div>

                                                            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                                <label class="control-label"
                                                                       for="orgao_emissor_acompanhante2"
                                                                       value="Orgão Emissor"></label>
                                                                <input name="orgaoEmissor" id="orgao_emissor_acompanhante2" type="text"
                                                                       class="form-control">
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            %{--Fim Dados Gerais--}%

                                            %{--Início Endereço--}%
                                                <div class="tab-pane" id="endereco1">
                                                    <div class="row">
                                            %{--CEP--}%
                                                <div class="col-md-2 col-sm-2 col-xs-2 form-group">
                                                    <div class="col-md-10 col-sm-10 col-xs-10 form-group">
                                                        <label class="control-label" for="endereco_cep_acompanhante2">CEP:</label>
                                                        <input name="cep" id="endereco_cep_acompanhante2" type="text"
                                                               class="form-control"
                                                               data-inputmask="'mask': '99999-999'">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                            %{--Logradouro--}%
                                                <div class="col-md-6 col-sm-6 col-xs-6">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_logradouro_acompanhante2">Logradouro:</label>
                                                        <input name="endereco_logradouro" id="endereco_logradouro_acompanhante2"
                                                               type="text" class="form-control">
                                                    </div>
                                                </div>
                                            %{--Numero--}%
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_numero_acompanhante2">Numero:</label>
                                                        <input name="endereco_numero" id="endereco_numero_acompanhante2" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                            %{--Estado--}%
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_estado_acompanhante2">Estado:</label>
                                                        <input name="endereco_estado" id="endereco_estado_acompanhante2" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            %{--Cidade--}%
                                                <div class="col-md-5 col-sm-5 col-xs-5">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_cidade_acompanhante2">Cidade:</label>
                                                        <input name="endereco_cidade" id="endereco_cidade_acompanhante2" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            %{--Bairro--}%
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label"
                                                               for="endereco_bairro_acompanhante2">Bairro:</label>
                                                        <input name="endereco_bairro" id="endereco_bairro_acompanhante2" type="text"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                            %{--Fim Endereco--}%

                                            %{--Início Contato--}%
                                                <div class="tab-pane" id="contato1">

                                                    <div class="content_x">
                                                        <div class="row">
                                                            <div class="col-md-12 col-sm-12 col-xs-12">

                                            %{--campo telefone--}%
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <div class="x_panel">
                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <label class="control-label"
                                                                   for="tipoTelefone_acompanhante2">Telefone</label>
                                                            <input name="tipoTelefone" id="tipoTelefone_acompanhante2"
                                                                   type="text" placeholder="Residencial"
                                                                   class="form-control">
                                                        </div>

                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <span class="fa fa-phone form-control-feedback left"
                                                                  aria-hidden="true"></span>
                                                            <input name="numeroTelefone" id="numeroTelefone_acompanhante2"
                                                                   type="text"
                                                                   class="form-control has-feedback-left"
                                                                   placeholder="(xx) xxxxx-xxxx">
                                                        </div>
                                                    </div>
                                                </div>
                                            %{--fim campo telefone--}%

                                            %{--campo email--}%
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <div class="x_panel">
                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <label class="control-label"
                                                                   for="enderecoEmail_Acompanhate2">Email</label>
                                                            <input name="enderecoEmail" id="enderecoEmail_Acompanhate2"
                                                                   type="email" class="form-control"
                                                                   placeholder="exemplo@email.com">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            %{--fim campo email--}%
                                                </div>
                                            </div>
                                        </div>
                                            %{--fim Contato--}%

                                            %{--Início Acompanhante--}%

                                            %{--Fim Acompanhante--}%
                                                </div>
                                            %{--Fim Wizard Content--}%

                                                <div class="wizard-footer height-wizard">
                                                    <div class="pull-right">
                                                        <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
                                                               name='next'
                                                               value="${message(code: 'default.button.next.label', default: 'Próximo')}"/>
                                                <g:actionSubmit type='button' action="save"
                                                                class='btn btn-finish btn-fill btn-success btn-wd btn-sm'
                                                                name='finish'
                                                                value="${message(code: 'default.button.savarCadastro.label', default: 'Salvar')}"/>
                                                </div>

                                                <div class="pull-left">
                                                    <input type='button'
                                                           class='btn btn-previous btn-fill btn-default btn-wd btn-sm'
                                                           name='previous'
                                                           value="${message(code: 'default.button.previous.label', default: 'Anterior')}"/>
                                                                            </div>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                            </g:form>
                                                                </div>
                                                            </div>
                                                            %{--Fim wizard container--}%

                                                        </div> <!--<div class="col-md-8 col-sm-8 col-xs-8 form-group">->

                                                        <div class="clearfix"></div>

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div> --> <!-- Modal do acompanhante-->

                                            <!-- Modal do cancelamento do acompanhante-->
                                            <div class="modal fade cancelarAcompanhante" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">

                                                        <div class="modal-body">
                                                            <h4>Você tem certeza que deseja excluir esse acompanhante?</h4>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger">Sim</button>
                                                            <button type="button" class="btn btn-primary">Não</button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal do cancelamento do acompanhante-->

                                        </div>


                                    </div>

                                    <div class="wizard-footer height-wizard">
                                        <div class="pull-right">
                                            <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
                                                   name='next'
                                                   value="${message(code: 'default.button.next.label', default: 'Próximo')}"/>
                                            <g:actionSubmit type='button' action="save"
                                                            class='btn btn-finish btn-fill btn-success btn-wd btn-sm'
                                                            name='finish'
                                                            value="${message(code: 'default.button.savarCadastro.label', default: 'Salvar')}"/>
                                        </div>

                                        <div class="pull-left">
                                            <input type='button'
                                                   class='btn btn-previous btn-fill btn-default btn-wd btn-sm'
                                                   name='previous'
                                                   value="${message(code: 'default.button.previous.label', default: 'Anterior')}"/>
                                        </div>

                                        <div class="clearfix"></div>
                                    </div>

                                </g:form>
                            </div>
                        </div>
                        <!-- wizard container -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->

</body>
<content tag="javascript">
    <!-- jQuery Smart Wizard -->
    <asset:javascript src="SmartWizard/js/jquery.bootstrap.wizard.js"/>
    <asset:javascript src="SmartWizard/js/gsdk-bootstrap-wizard.js"/>
    <asset:javascript src="SmartWizard/js/jquery.validate.min.js"/>
    <asset:javascript src="jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"/>

    <asset:javascript src="getByCEP.js"/>

    %{--inicializar contents--}%
    <asset:javascript src="mask.js"/>
    <asset:javascript src="campos_contato.js"/>
    <!-- Datatables -->
    <asset:javascript src="datatables/datatables.net/js/jquery.dataTables.js"/>
    <asset:javascript src="datatables/datatables.net-bs/js/dataTables.bootstrap.min.js"/>
    <asset:javascript src="datatables/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"/>
    <asset:javascript src="datatables/datatables.net-keytable/js/dataTables.keyTable.min.js"/>

    <!-- Datatables -->
    <script>
        $(document).ready(function () {

            $('#datatable').dataTable();

            $('#datatable-keytable').DataTable({
                keys: true
            });

            $('#datatable-fixed-header').DataTable({
                fixedHeader: true
            });

            $datatable.dataTable({
                'order': [[1, 'asc']],
                'columnDefs': [
                    {orderable: false, targets: [0]}
                ]
            });

            TableManageButtons.init();
        });
    </script>
    <!-- /Datatables -->
</content>

</html>