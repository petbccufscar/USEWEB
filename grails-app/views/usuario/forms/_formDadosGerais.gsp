<%@ page import="useweb.cadastroPessoa.Pessoa" %>
%{--Início Dados Gerais--}%
<div id="dadosGerais">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">

            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                <label class="control-label"
                       for="nome_completo">Nome Completo<small>(required)</small>
                </label>
                <input name="nomeCompleto" id="nome_completo" type="text"
                       class="form-control" required>
            </div>

            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                <label class="control-label"
                       for="nome_social">Nome Social</label>
                <input name="nomeSocial" id="nome_social" type="text"
                       class="form-control">
            </div>

            %{--TODO: Arrumar representação da data--}%
            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <label class="control-label"
                       for="data_nascimento">Data de Nascimento</label>
                <input name="data_nascimento" id="data_nascimento" type="text"
                       class="form-control"
                       data-inputmask="'mask': '99/99/9999'">
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <label class="control-label" for="idade">Idade</label>
                <input name="idade" id="idade" type="number" class="form-control">
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <div class="checkbox">
                    <br/>
                    <label class="control-label"
                           for="data_estimada">%{--TODO: trocar data_estimada e dataEstimada --}%
                        <input name="dataEstimada" id="data_estimada"
                               type="checkbox"
                               class="flat">Data não confirmada
                    </label>
                </div>
            </div>

            <div class="clearfix"></div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <label class="control-label" for="sexo">Sexo</label>
                %{--<input name="sexo" id="sexo" type="text" class="form-control">--}%
                <g:select name="sexo" id="sexo" class="form-control"
                          from="${Pessoa.constrainedProperties.sexo.inList}"/>
            </div>

            <div class="clearfix"></div>

            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                <label class="control-label" for="cpf">CPF</label>
                <input name="cep" id="cpf" type="text"
                       class="form-control"
                       data-inputmask="'mask': '999.999.999-99'">
            </div>

            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                <label class="control-label" for="rg">RG</label>
                <input name="rg" id="rg" type="text" class="form-control" pattern="[a-zA-Z0-9\s]+">
            </div>

            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                <label class="control-label"
                       for="orgao_emissor">Orgão Emissor</label>
                <input name="orgaoEmissor" id="orgao_emissor" type="text"
                       class="form-control">
            </div>

            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                <label class="control-label" for="nome_mae">Nome da Mãe</label>
                <input name="nomeMae" id="nome_mae" type="text"
                       class="form-control">
            </div>


            <div class="col-md-4 col-sm-12 col-xs-4 form-group">
                <label class="control-label" for="cns">CNS</label>
                <input name="cns" id="cns" type="text" class="form-control">
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <label class="control-label" for="cor_raca">Cor/Raça</label>
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
                       for="escolaridade">Escolaridade</label>
                <g:select name="cor_raca" id="escolaridade" class="form-control"
                          from="${Pessoa.constrainedProperties.sexo.inList}"/>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <label class="control-label" for="profissao">Profissão</label>
                <input name="profissao" id="profissao" type="text"
                       class="form-control">
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                <label class="control-label"
                       for="status_profissao">Status Profissão</label>
                <g:select name="cor_raca" id="status_profissao" class="form-control"
                          from="${Pessoa.constrainedProperties.sexo.inList}"/>
            </div>

            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                <label class="control-label"
                       for="observacao">Observações de Cadastro</label>
                <textarea rows="5" name="observacao" id="observacao"
                          class="form-control"></textarea>
            </div>

        </div>
    </div>
</div>
%{--Fim Dados Gerais--}%