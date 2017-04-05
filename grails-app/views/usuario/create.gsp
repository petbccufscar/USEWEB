<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="useweb.cadastroPessoa.Pessoa" %>
<head>
    <meta name="layout" content="defaultTheme"/>
    <title>Cadastrar</title>

    <asset:stylesheet src="SmartWizard/css/gsdk-bootstrap-wizard.css"/>
    <asset:stylesheet src="default/general.css"/>

</head>
%{--tadaima--}%
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
                <div class="x_panel" id="dadosEstaticosUsuario">
                    <div class="col-md-4 col-sm-4 col-xs-4">
                        <label class="control-label" for="nomeEstatico">Nome</label>
                        <input class="form-control" id="nomeEstatico" type="text" disabled>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4">
                        <label class="control-label" for="numeroUSE">Número USE</label>
                        <input class="form-control" id="numeroUSE" type="text" disabled>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4">
                        <label class="control-label" for="dataCadastro">Data Cadastro</label>
                        <input class="form-control" id="dataCadastro" type="text" data-inputmask="'mask': '99/99/9999'" disabled>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        %{--  Início Wizard container  --}%
                                <g:form name="cadastroUsuario" controller="usuario">
                                    <div id="wizard" class="form_wizard wizard_horizontal">
                                        <ul class="wizard_steps">
                                            <li>
                                                <a href="#dadosGerais">
                                                    <span class="step_no">1</span>
                                                    <span class="step_descr">
                                                        DADOS GERAIS<br>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#endereco">
                                                    <span class="step_no">2</span>
                                                    <span class="step_descr">
                                                        ENDEREÇO<br>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#contato">
                                                    <span class="step_no">3</span>
                                                    <span class="step_descr">
                                                        CONTATO<br>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#acompanhante">
                                                    <span class="step_no">4</span>
                                                    <span class="step_descr">
                                                        ACOMPANHANTE<br>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                %{--Início Dados Gerais--}%
                                    <div id="dadosGerais">
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
                                                    <input name="data_nascimento" id="data_nascimento" type="text"
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
                                    <div id="endereco">

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

                                %{--Início Contato--}%
                                    <div id="contato">


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
                                %{--fim Contato--}%

                                %{--Início Acompanhante--}%
                                        <div id="acompanhante">
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

                                            <div class="modal fade infoAcompanhante1" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">

                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                                                            </button>
                                                            <h3 class="modal-title" id="myModalLabel">Cadastro do acompanhante</h3>
                                                        </div>

                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">

                                                            <div id="myTabContent" class="tab-content">
                                                                <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="realizar-tab">
                                                                    <div class="x_content">
                                                                        <div class="row">
                                                                            <form class="form-vertical">

                                                                                <h2 class="modal-title" id="myModalLabelDadosGerais">Dados gerais</h2>
                                                                                <div class="x_panel">
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


                                                                                <h2 class="modal-title" id="myModalLabelDadosGerais">Endereço</h2>
                                                                                <div class="x_panel">
                                                                                    <div class="row">
                                                                                        %{--CEP--}%
                                                                                        <div class="col-md-2 col-sm-2 col-xs-2 form-group">
                                                                                            <div class="col-md-10 col-sm-10 col-xs-10 form-group">
                                                                                                <label class="control-label" for="endereco_cep_acompanhante">CEP:</label>
                                                                                                <input name="cep" id="endereco_cep_acompanhante" type="text"
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
                                                                                                       for="endereco_logradouro_acompanhante">Logradouro:</label>
                                                                                                <input name="endereco_logradouro" id="endereco_logradouro_acompanhante"
                                                                                                       type="text" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                        %{--Numero--}%
                                                                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_numero_acompanhante">Numero:</label>
                                                                                                <input name="endereco_numero" id="endereco_numero_acompanhante" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row">
                                                                                        %{--Complemento--}%
                                                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_complemento_acompanhante">Complemento:</label>
                                                                                                <input name="endereco_complemento" id="endereco_complemento_acompanhante"
                                                                                                       type="text" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row">
                                                                                        %{--Estado--}%
                                                                                        <div class="col-md-3 col-sm-3 col-xs-3">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_estado_acompanhante">Estado:</label>
                                                                                                <input name="endereco_estado" id="endereco_estado_acompanhante" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                        %{--Cidade--}%
                                                                                        <div class="col-md-5 col-sm-5 col-xs-5">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label"
                                                                                                       for="endereco_cidade_acompanhante">Cidade:</label>
                                                                                                <input name="endereco_cidade" id="endereco_cidade_acompanhante" type="text"
                                                                                                       class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                        %{--Bairro--}%
                                                                                        <div class="col-md-8 col-sm-8 col-xs-8">
                                                                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                <label class="control-label" for="endereco_bairro_acompanhante">Bairro:</label>
                                                                                                <input name="endereco_bairro" id="endereco_bairro_acompanhante" type="text" class="form-control">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div> <!--panel2-->

                                                                                <h2 class="modal-title" id="myModalLabel">Contato</h2>
                                                                                <div class="x_panel">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12 col-sm-12 col-xs-12">

                                                                                            %{--campo telefone--}%
                                                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                                <div id="telefoneAcompanhante" class="x_panel">
                                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                        <label class="control-label" for="tipoTelefone_acompanhante">Telefone</label>
                                                                                                        <input name="tipoTelefone" id="tipoTelefone_acompanhante" type="text" placeholder="Residencial" class="form-control">
                                                                                                    </div>

                                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                        <span class="fa fa-phone form-control-feedback left" aria-hidden="true"></span>
                                                                                                        <input name="numeroTelefone" id="numeroTelefone_acompanhante" type="text" class="form-control has-feedback-left" placeholder="(xx) xxxxx-xxxx">
                                                                                                    </div>

                                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                        <label class="control-label" for="observacaoTelefone_acompanhante">Observações</label>
                                                                                                        <textarea name="observacaoTelefone" id="observacaoTelefone_acompanhante" class="form-control" placeholder="Aqui vão as observações" style="resize:none;"></textarea>
                                                                                                    </div>
                                                                                                </div>

                                                                                                %{--botão mais--}%
                                                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                    <i onclick="insereCaixaTelefoneAcompanhante()" class="fa fa-plus-square"></i>
                                                                                                </div>
                                                                                            </div>
                                                                                            %{--fim campo telefone--}%

                                                                                            %{--campo email--}%
                                                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                                <div id="emailAcompanhante" class="x_panel">
                                                                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                        <label class="control-label" for="enderecoEmail_acompanhante">Email</label>
                                                                                                        <input name="enderecoEmail" id="enderecoEmail_acompanhante" type="label" class="form-control" placeholder="exemplo@email.com">
                                                                                                    </div>
                                                                                                </div>

                                                                                                %{--botão mais--}%
                                                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                                                    <i onclick="insereCaixaEmailAcompanhante()" class="fa fa-plus-square"></i>
                                                                                                </div>
                                                                                            </div>
                                                                                            %{--fim campo email--}%

                                                                                        </div>
                                                                                    </div>
                                                                                </div>



                                                                            </form>
                                                                        </div>
                                                                        <button type="button" class="btn btn-success" class="close" data-dismiss="modal">Salvar</button>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div> <!--<div class="col-md-8 col-sm-8 col-xs-8 form-group">-->

                                                        <div class="clearfix"></div>



                                                    </div>
                                                </div>
                                            </div>
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
                                        </div>
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
<!-- /page content -->

</body>
<content tag="javascript">
    <!-- jQuery Smart Wizard -->

    <asset:javascript src="SmartWizard/js/jquery.smartWizard.js"/>

    <asset:javascript src="jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"/>
    <asset:javascript src="getByCEP.js"/>
    <asset:javascript src="campos_contato.js"/>

    %{--inicializar contents--}%
    <asset:javascript src="mask.js"/>
    <asset:javascript src="initializeSmartWizard.js"/>
</content>

</html>