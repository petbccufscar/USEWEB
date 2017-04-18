<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta name="layout" content="defaultTheme"/>
    <title>Cadastrar</title>

    <asset:stylesheet src="SmartWizard/css/gsdk-bootstrap-wizard.css"/>
    <asset:stylesheet src="default/general.css"/>

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
                        <input class="form-control" id="dataCadastro" type="text" data-inputmask="'mask': '99/99/9999'"
                               disabled>
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
                                %{--Dados Gerais--}%
                                <g:render template="/usuario/forms/formDadosGerais"/>
                                %{--Endereço--}%
                                <g:render template="/usuario/forms/formEndereco"/>
                                %{--Contato--}%
                                <g:render template="/usuario/forms/formContato"/>
                                %{--Acompanhante--}%
                                <g:render template="/usuario/forms/formAcompanhante"/>
                            </div>
                        </g:form>
                    </div>
                </div>
                <!-- wizard container -->
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
    <asset:javascript src="initializeSmartWizardAcompanhante.js"/>
</content>

</html>