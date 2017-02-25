<!-- sidebar -->
<div class="col-md-3 left_col menu_fixed">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            %{--TODO: Colocar o logo da use como titulo--}%
            %{--<g:link controller="template" href="#" class="site_title"><span>USE-WEB</span></g:link>--}%
            <g:link href="#" class="site_title"><span>USE-WEB</span></g:link>

        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile">
            <div class="profile_info">
                <span>Bem-vindo,</span>

                <h2>${name}</h2>
            </div>

            <div class="clearfix"></div>
        </div>
        <!-- /menu profile quick info -->
        <br/>
        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Funções</h3>

                %{--TODO: Arrumar todos os links e verificar essa abordagem com iteração--}%

                <g:each in="${roles}" var="role">
                %{--Se for docente--}%
                    <g:if test="${role.toString().equals('ROLE_DOCENTE')}">
                        <ul class="nav side-menu">
                            <li>
                                <g:link controller="docente" action="index"><i
                                        class="fa fa-home"></i>Home</g:link>
                            </li>
                            <li>
                                %{--TODO: Trocar para Lista Atividades--}%
                                <g:link controller="#" action="#"><i
                                        class="fa fa-edit"></i>Lista Atividades</g:link>
                            </li>
                            <li>
                                <g:link controller="#" action="#"><i
                                        class="fa fa-user"></i>Atendimento Individual</g:link>
                            </li>
                            <li>
                                <a><i class="fa fa-users"></i>Atividades em Grupo
                                    <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li>
                                        <g:link controller="#"
                                                action="#"><i></i>Atendimentos Realizados</g:link>
                                    </li>
                                    <li>
                                        <g:link controller="#"
                                                action="#"><i></i>Realizar Atendimento</g:link>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                %{--TODO: Controlar a badge conforme haja atendimentos pendentes--}%
                                <g:link controller="#" action="#"><i
                                        class="fa fa-book"></i><span
                                        class="badge bg-red pull-right">2</span>Atendimentos Pendentes</g:link>
                            </li>

                            <li>
                                <a><i class="fa fa-list-ul"></i>Listas
                                    <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li>
                                        <a>Triagem</a>
                                    </li>
                                    <li>
                                        <a>Atendimento</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </g:if>

                %{--Se for Aluno--}%
                    <g:elseif test="${role.toString().equals('ROLE_ALUNO')}">
                        <ul class="nav side-menu">
                            <li>
                                <g:link controller="aluno" action="index"><i
                                        class="fa fa-home"></i>Home</g:link>
                            </li>
                            <li>
                                <g:link controller="#" action="#"><i
                                        class="fa fa-edit"></i>Atividades</g:link>
                            </li>
                            <li>
                                <g:link controller="#" action="#"><i
                                        class="fa fa-user"></i>Atendimento Individual</g:link>
                            </li>
                            <li>
                                <g:link controller="#" action="#"><i
                                        class="fa fa-users"></i>Atendimento em Grupo</g:link>
                            </li>
                            <li>
                                <g:link controller="#" action="#"><i class="fa fa-book"></i><span
                                        class="badge bg-red pull-right">2</span>Questões Pendentes</g:link>
                            </li>
                        </ul>
                    </g:elseif>

                %{--Se for Terceirizaddo--}%
                    <g:elseif test="${role.toString().equals('ROLE_TERCEIRIZADO')}">
                        <ul class="nav side-menu">
                            <li>
                                <g:link controller="terceirizado" action="index"><i
                                        class="fa fa-home"></i>Home</g:link>
                            </li>
                            <li>
                                <g:link controller="#" action="#"><i
                                        class="fa fa-search"></i>Consultar cadastro</g:link>
                            </li>
                        </ul>
                    </g:elseif>

                    <g:else>
                        <ul class="nav side-menu">
                            %{--<li>--}%
                                %{--<g:link controller="template" action="home"><i class="fa fa-home"></i>Home</g:link>--}%
                            %{--</li>--}%
                        </ul>
                    </g:else>
                </g:each>

            </div>
        </div>
        <!-- sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
    </div>
</div>
<!-- sidebar -->
