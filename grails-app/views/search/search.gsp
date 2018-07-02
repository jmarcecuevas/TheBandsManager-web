<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Búsqueda</title>
    <meta name="layout" content="main"/>

</head>
<body>
<div class="row">
    <div class="col-lg-8">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Búsqueda de músicos</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
                <label class="col-sm-12 control-label">Indique la experiencia requerida en años para los instrumentos que el músico debe saber tocar</label>
                <br>
                <br>
                <form method="get" class="form-horizontal">

                    <g:each var="i" in="${ (0..<8) }">
                        <div class="form-group"><label class="col-sm-2 control-label">Nombre</label>
                            <div class="col-sm-3"><input type="number" min="0" max="90" class="form-control" placeholder="0"></div>
                        </div>
                    </g:each>

                    <div class="input-group date">
                        <label class="col-sm-12">Fecha límite para recibir propuestas de músicos.</label>
                        <br>
                        <g:datePicker name="myDate" value="${new Date()}"
                                      noSelection="['':'-Selecciona-']" precision="day"/>
                    </div>

                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button class="btn btn-white" type="submit">Cancelar</button>
                            <button class="btn btn-primary" type="submit">Buscar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>