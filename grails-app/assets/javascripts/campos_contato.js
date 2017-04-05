function insereCaixaEmailAcompanhante() {
    var div1 = document.createElement("div");
    div1.setAttribute("class", "x_panel");
    var div2 = document.createElement("div");
    div2.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    var label = document.createElement("label");
    label.setAttribute("class", "control-label");
    label.setAttribute("for", "enderecoEmail");
    label.innerHTML = "Email";
    var input = document.createElement("input");
    input.setAttribute("name", "enderecoEmail");
    input.setAttribute("id", "enderecoEmail");
    input.setAttribute("type", "label");
    input.setAttribute("class", "form-control");
    input.setAttribute("placeholder", "exemplo@email.com");
    div1.append(div2);
    div2.append(label, input);
    $("#emailAcompanhante").after(div1);
}

function insereCaixaEmail() {
    var div1 = document.createElement("div");
    div1.setAttribute("class", "x_panel");
    var div2 = document.createElement("div");
    div2.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    var label = document.createElement("label");
    label.setAttribute("class", "control-label");
    label.setAttribute("for", "enderecoEmail");
    label.innerHTML = "Email";
    var input = document.createElement("input");
    input.setAttribute("name", "enderecoEmail");
    input.setAttribute("id", "enderecoEmail");
    input.setAttribute("type", "label");
    input.setAttribute("class", "form-control");
    input.setAttribute("placeholder", "exemplo@email.com");
    div1.append(div2);
    div2.append(label, input);
    $("#email").after(div1);
}

function insereCaixaTelefoneAcompanhante() {
    var div1 = document.createElement("div");
    div1.setAttribute("class", "x_panel");
    var div2 = document.createElement("div");
    div2.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    var div3 = document.createElement("div");
    div3.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    var div4 = document.createElement("div");
    div4.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    //campo tipo telefone
    var label1 = document.createElement("label");
    label1.setAttribute("class", "control-label");
    label1.setAttribute("for", "telefone");
    label1.innerHTML = "Telefone";
    var input1 = document.createElement("input");
    input1.setAttribute("name", "tipoTelefone");
    input1.setAttribute("id", "tipoTelefone");
    input1.setAttribute("type", "text");
    input1.setAttribute("class", "form-control");
    input1.setAttribute("placeholder", "Residencial");
    //campo numero telefone
    var span = document.createElement("span");
    span.setAttribute("class", "fa fa-phone form-control-feedback left");
    span.setAttribute("aria-hidden", "true");
    var input2 = document.createElement("input");
    input2.setAttribute("name", "numeroTelefone");
    input2.setAttribute("id", "numeroTelefone");
    input2.setAttribute("type", "text");
    input2.setAttribute("class", "form-control has-feedback-left");
    input2.setAttribute("placeholder", "(xx) xxxxx-xxxx");
    //campo observacao
    var label2 = document.createElement("label");
    label2.setAttribute("class", "control-label");
    label2.setAttribute("for", "observacao");
    label2.innerHTML = "Observação";
    var textarea = document.createElement("textarea");
    textarea.setAttribute("name", "observacaoTelefone");
    textarea.setAttribute("id", "observacaoTelefone");
    textarea.setAttribute("type", "text");
    textarea.setAttribute("class", "form-control");
    textarea.setAttribute("placeholder", "Aqui vão as observações");
    textarea.setAttribute("style", "resize:none");
    //insercao dentro dos divs
    div1.append(div2);
    div2.append(label1, input1);
    div1.append(div3);
    div3.append(span, input2);
    div1.append(div4);
    div4.append(label2, textarea);
    $("#telefoneAcompanhante").after(div1);
}

function insereCaixaTelefone(){
    var div1 = document.createElement("div");
    div1.setAttribute("class", "x_panel");
    var div2 = document.createElement("div");
    div2.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    var div3 = document.createElement("div");
    div3.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    var div4 = document.createElement("div");
    div4.setAttribute("class", "col-md-12 col-sm-12 col-xs-12 form-group");
    //campo tipo telefone
    var label1 = document.createElement("label");
    label1.setAttribute("class", "control-label");
    label1.setAttribute("for", "telefone");
    label1.innerHTML = "Telefone";
    var input1 = document.createElement("input");
    input1.setAttribute("name", "tipoTelefone");
    input1.setAttribute("id", "tipoTelefone");
    input1.setAttribute("type", "text");
    input1.setAttribute("class", "form-control");
    input1.setAttribute("placeholder", "Residencial");
    //campo numero telefone
    var span = document.createElement("span");
    span.setAttribute("class", "fa fa-phone form-control-feedback left");
    span.setAttribute("aria-hidden", "true");
    var input2 = document.createElement("input");
    input2.setAttribute("name", "numeroTelefone");
    input2.setAttribute("id", "numeroTelefone");
    input2.setAttribute("type", "text");
    input2.setAttribute("class", "form-control has-feedback-left");
    input2.setAttribute("placeholder", "(xx) xxxxx-xxxx");
    //campo observacao
    var label2 = document.createElement("label");
    label2.setAttribute("class", "control-label");
    label2.setAttribute("for", "observacao");
    label2.innerHTML = "Observação";
    var textarea = document.createElement("textarea");
    textarea.setAttribute("name", "observacaoTelefone");
    textarea.setAttribute("id", "observacaoTelefone");
    textarea.setAttribute("type", "text");
    textarea.setAttribute("class", "form-control");
    textarea.setAttribute("placeholder", "Aqui vão as observações");
    textarea.setAttribute("style", "resize:none");
    //insercao dentro dos divs
    div1.append(div2);
    div2.append(label1, input1);
    div1.append(div3);
    div3.append(span, input2);
    div1.append(div4);
    div4.append(label2, textarea);
    $("#telefone").after(div1);
}

