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
%{--Fim Endereço--}%