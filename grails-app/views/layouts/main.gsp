<!doctype html>
<html lang="pt">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        <g:layoutTitle default="USE-WEB"/>
    </title>

    <!-- Bootstrap -->
    <asset:stylesheet src="bootstrap-3.3.7/css/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <asset:stylesheet src="font-awesome-4.6.3/css/font-awesome.min.css"/>
    <!-- NProgress -->
    <asset:stylesheet src="nprogress/nprogress.css"/>
    <!-- Custom Theme Style -->
    <asset:stylesheet src="gentelella/custom.css"/>

    <g:layoutHead/>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">

        %{--TODO: Pesquisar como customizar o form de login--}%
        %{--Foi comentado essa parte do codigo para nao dar conflito com a pagina de login--}%
        %{--Tambem é utilizado nas mensagens de erro que antigamente era sobrescrevida com o layout padrão--}%

        <g:layoutBody/>

    </div>
</div>

<g:pageProperty name="page.javascript"/>

</body>
</html>