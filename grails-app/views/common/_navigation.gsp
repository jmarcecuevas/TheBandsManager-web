<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear">
                            <span class="block m-t-xs">
                                <strong class="font-bold"><sec:username/></strong>
                            </span>
                            <span class="text-muted text-xs block">Músico
                                <b class="caret"></b>
                            </span>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li>
                            <g:link controller='logout'>Salir</g:link>
                        </li>
                    </ul>
                </div>
                <div class="logo-element">
                    TBM
                </div>
            </li>

            <li>
                <a href="#"><i class="fa fa-headphones"></i> <span class="nav-label">Instrumentos</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li> (<g:link controller="instrument" action="add">Crear</g:link> </li>
                        <li> (<g:link controller="instrument" action="listAdmin">Ver todos</g:link> </li>
                    </sec:ifAllGranted>
                    <sec:ifAllGranted roles="ROLE_USER">
                        <li> (<g:link controller="instrument" action="list">Ver todos</g:link> </li>
                    </sec:ifAllGranted>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Roles</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li> (<g:link controller="musicianRole" action="add">Crear</g:link> </li>
                        <li> (<g:link controller="musicianRole" action="listAdmin">Ver todos</g:link> </li>
                    </sec:ifAllGranted>
                    <sec:ifAllGranted roles="ROLE_USER">
                        <li> (<g:link controller="musicianRole" action="list">Ver todos</g:link> </li>
                    </sec:ifAllGranted>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-music"></i> <span class="nav-label">Géneros musicales</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li> (<g:link controller="musicGenre" action="add">Crear</g:link> </li>
                        <li> (<g:link controller="musicGenre" action="listAdmin">Ver todos</g:link> </li>
                    </sec:ifAllGranted>
                    <sec:ifAllGranted roles="ROLE_USER">
                        <li> (<g:link controller="musicGenre" action="list">Ver todos</g:link> </li>
                    </sec:ifAllGranted>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-sitemap"></i> <span class="nav-label">Bandas</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> (<g:link controller="band" action="list" >Ver todas</g:link> </li>
                    <li> (<g:link controller="band" action="add">Crear</g:link> </li>
                </ul>
            </li>

            <sec:ifAllGranted roles="ROLE_USER">
                <li>
                    <a href="/search/search"><i class="fa fa-search"></i> <span class="nav-label">Búsqueda</span></a>
                </li>
            </sec:ifAllGranted>

        </ul>
    </div>
</nav>