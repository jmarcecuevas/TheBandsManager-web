<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Géneros musicales</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Géneros musicales</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">

                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${genres}">
                                <tr>
                                    <td>${it.id}</td>
                                    <td>${it.name}</td>
                                    <td> <button type="button" class="btn-rounded btn-warning" >Editar</button> </td>
                                    <td> <button type="button" class="btn-rounded btn-danger">Eliminar</button> </td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>