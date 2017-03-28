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
                <div class="x_panel">
                    <div class="x_content">
                        <!--      Wizard container        -->
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

                                    <div class="tab-content">
                                        <div class="tab-pane" id="dadosGerais">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 col-xs-12">

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="nome_completo">Nome Completo <small>(required)</small></label>
                                                        <input name="nomeCompleto" id="nome_completo" type="text" class="form-control" required>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="nome_social">Nome Social</label>
                                                        <input name="nomeSocial" id="nome_social" type="text" class="form-control">
                                                    </div>

                                                    %{--TODO: Arrumar representação da data--}%
                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="data_nascimento">Data de Nascimento</label>
                                                        <input name="dataNascimento" id="data_nascimento" type="date" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="idade">Idade</label>
                                                        <input name="idade" id="idade" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <div class="checkbox">
                                                            <br/>
                                                            <label class="control-label" for="data_estimada">%{--TODO: trocar data_estimada e dataEstimada --}%
                                                                <input name="dataEstimada" id="data_estimada" type="checkbox" class="flat"> Data não confirmada
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="clearfix"></div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="sexo">Sexo</label>
                                                        <input name="sexo" id="sexo" type="text" class="form-control">
                                                    </div>

                                                    <div class="clearfix"></div>

                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="cpf">CPF</label>
                                                        <input name="cpf" id="cpf" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="rg">RG</label>
                                                        <input name="rg" id="rg" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="orgao_emissor">Orgão Emissor</label>
                                                        <input name="orgaoEmissor" id="orgao_emissor" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="nome_mae">Nome da Mãe</label>
                                                        <input name="nomeMae" id="nome_mae" type="text" class="form-control">
                                                    </div>


                                                    <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                                                        <label class="control-label" for="cns">CNS</label>
                                                        <input name="cns" id="cns" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="cor_raca">Cor/Raça</label>
                                                        <input name="corRaca" id="cor_raca" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="etnia">Etnia</label>
                                                        <input name="etnia" id="etnia" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="escolaridade">Escolaridade</label>
                                                        <input name="escolaridade" id="escolaridade" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="profissao">Profissão</label>
                                                        <input name="profissao" id="profissao" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                                                        <label class="control-label" for="status_profissao">Status Profissão</label>
                                                        <input name="statusProfissao" id="status_profissao" type="text" class="form-control">
                                                    </div>

                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="observacao">Observações de Cadastro</label>
                                                        <textarea rows="5" name="observacao" id="observacao"  class="form-control"></textarea>
                                                    </div>

                                                    %{--<div class="col-md-12 col-sm-12 col-xs-12 form-group">--}%
                                                        %{--<label class="control-label" for="email">Email <small>(required)</small></label>--}%
                                                        %{--<input name="email" id="email" type="email" class="form-control"--}%
                                                               %{--placeholder="andrew@creative-tim.com">--}%
                                                    %{--</div>--}%
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane" id="endereco">

                                            <div class="row">
                                                %{--CEP--}%
                                                <div class="col-md-2 col-sm-2 col-xs-2 form-group">
                                                    <div class="col-md-10 col-sm-10 col-xs-10 form-group">
                                                        <label class="control-label" for="endereco_CEP">CEP:</label>
                                                        <input name="endereco_CEP" id="endereco_CEP" type="text" class="form-control" data-inputmask="'mask': '99999-999'">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                %{--Tipo Logradouro--}%
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="endereco_tipoLogradouro">Tipo Logradouro:</label><br>
                                                        <select name="endereco_tipoLogradouro" class="form-control" id="endereco_tipoLogradouro">
                                                            <option value="tipoLog1">Logradouro 1</option>
                                                            <option value="tipoLog2">Logradouro 2</option>
                                                            <option value="tipoLog3">Logradouro 3</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                %{--Logradouro--}%
                                                <div class="col-md-6 col-sm-6 col-xs-6">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="endereco_logradouro">Logradouro:</label>
                                                        <input name="endereco_logradouro" id="endereco_logradouro" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                %{--Numero--}%
                                                <div class="col-md-2 col-sm-2 col-xs-2">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="endereco_numero">Numero:</label>
                                                        <input name="endereco_numero" id="endereco_numero" type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                %{--Estado--}%
                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="endereco_estado">Estado:</label>
                                                        <input name="endereco_estado" id="endereco_estado" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                %{--Cidade--}%
                                                <div class="col-md-5 col-sm-5 col-xs-5">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                        <label class="control-label" for="endereco_cidade">Cidade:</label>
                                                        <input name="endereco_cidade" id="endereco_cidade" type="text" class="form-control">
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
                                                        <div class="x_panel">
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
                                                    </div>
                                                    %{--fim campo telefone--}%

                                                    %{--campo email--}%
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <div class="x_panel">
                                                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                                    <label class="control-label" for="enderecoEmail">Email</label>
                                                                    <input name="enderecoEmail" id="enderecoEmail" type="label" class="form-control" placeholder="exemplo@email.com">
                                                                </div>
                                                        </div>
                                                    </div>
                                                    %{--fim campo email--}%

                                                </div>
                                            </div>
                                            </div>

                                        </div>
                                        %{--fim aba contato--}%

                                        <div class="tab-pane" id="acompanhante">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h4 class="info-text">Are you living in a nice area?</h4>
                                                </div>

                                                <div class="col-sm-7 col-sm-offset-1">
                                                    <div class="form-group">
                                                        <label>Street Name</label>
                                                        <input type="text" class="form-control" placeholder="5h Avenue">
                                                    </div>
                                                </div>

                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <label>Street Number</label>
                                                        <input type="text" class="form-control" placeholder="242">
                                                    </div>
                                                </div>

                                                <div class="col-sm-5 col-sm-offset-1">
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <input type="text" class="form-control"
                                                               placeholder="New York...">
                                                    </div>
                                                </div>

                                                <div class="col-sm-5">
                                                    <div class="form-group">
                                                        <label>Country</label><br>
                                                        <select name="country" class="form-control">
                                                            <option value="Afghanistan">Afghanistan</option>
                                                            <option value="Albania">Albania</option>
                                                            <option value="Algeria">Algeria</option>
                                                            <option value="American Samoa">American Samoa</option>
                                                            <option value="Andorra">Andorra</option>
                                                            <option value="Angola">Angola</option>
                                                            <option value="Anguilla">Anguilla</option>
                                                            <option value="Antarctica">Antarctica</option>
                                                            <option value="...">...</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="wizard-footer height-wizard">
                                        <div class="pull-right">
                                            <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
                                                   name='next' value="${message(code:'default.button.next.label', default:'Próximo')}"/>
                                            <g:actionSubmit type='button' action="show"
                                                   class='btn btn-finish btn-fill btn-success btn-wd btn-sm'
                                                   name='finish' value="${message(code:'default.button.savarCadastro.label', default:'Salvar')}"/>
                                        </div>

                                        <div class="pull-left">
                                            <input type='button'
                                                   class='btn btn-previous btn-fill btn-default btn-wd btn-sm'
                                                   name='previous' value="${message(code:'default.button.previous.label', default:'Anterior')}"/>
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
    %{--inicializar contents--}%
    <asset:javascript src="mask.js"/>

</content>

</html>