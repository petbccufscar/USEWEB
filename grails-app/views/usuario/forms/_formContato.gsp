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
                            <input name="tipoTelefone" id="tipoTelefone" type="text" placeholder="Residencial"
                                   class="form-control">
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                            <span class="fa fa-phone form-control-feedback left" aria-hidden="true"></span>
                            <input name="numeroTelefone" id="numeroTelefone" type="text"
                                   class="form-control has-feedback-left" placeholder="(xx) xxxxx-xxxx">
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                            <label class="control-label" for="observacaoTelefone">Observações</label>
                            <textarea name="observacaoTelefone" id="observacaoTelefone" class="form-control"
                                      placeholder="Aqui vão as observações" style="resize:none;"></textarea>
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
                            <input name="enderecoEmail" id="enderecoEmail" type="label" class="form-control"
                                   placeholder="exemplo@email.com">
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