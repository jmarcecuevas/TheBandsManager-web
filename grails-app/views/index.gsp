<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>TheBandsManager | Main view</title>
</head>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="text-center m-t-lg">
                <h1>
                    Bienvenido a TheBandsManager
                </h1>

                <sec:ifAllGranted roles="ROLE_ADMIN">
                    <small>
                        ADMIN. Desde acá podrá visualizar y crear instrumentos,bandas,géneros y roles.
                    </small>
                </sec:ifAllGranted>
                <sec:ifAllGranted roles="ROLE_USER">
                    <small>
                        Perfil.
                    </small>
                </sec:ifAllGranted>



            </div>
        </div>
    </div>
</div>
</body>
</html>


