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
                <h5>Postulación</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">

                <g:form method="post" class="form-horizontal" action="add">
                    <div class="form-group">
                        <label class="col-sm-1 control-label">Instrumento</label>
                        <br>
                        <label class="text-white">"Ins"</label>
                        <div>
                            <g:select class="chosen-select" optionKey="id" optionValue="${{it.name}}"
                                      name="instrument" from="${thebandsmanager.Instrument.list()}"/>
                        </div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Experiencia</label>
                        <div class="col-sm-3"><input type="number" name="experience" min="0" max="90" class="form-control" placeholder="0"></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Género</label>
                        <div class="col-sm-10">
                            <g:select class="chosen-select" optionKey="id" optionValue="${{it.name}}"
                                      name="genre" from="${thebandsmanager.Genre.list()}"/>
                        </div>
                    </div>

                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button class="btn btn-white" type="reset">Cancelar</button>
                            <button class="btn btn-primary" type="submit">Postularse</button>
                        </div>
                    </div>
                </g:form>

            </div>
        </div>
    </div>
</div>

</body>
</html>