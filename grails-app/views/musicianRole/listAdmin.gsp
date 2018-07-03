<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Roles</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Roles</h5>
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
                            <th>Instrumento</th>
                            %{--<th></th>--}%
                        </tr>
                        </thead>
                        <tbody>
                            <g:each in="${roles}">
                                <tr>
                                    <g:form controller="musicianRole" action="remove">
                                    <td>${it.id} <input type="text" value="${it.id}" class="hideme" name="id"></td>
                                    <td>${it.name}</td>
                                    <td>
                                        <g:if test="${it.instrument}">
                                            ${it.instrument.name}
                                        </g:if>
                                        <g:else>

                                        </g:else>
                                    </td>
                                    %{--<td>--}%
                                        %{--<g:actionSubmit class="btn-rounded btn-danger" value="remove" action="remove"/>--}%
                                    %{--</td>--}%
                                    </g:form>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>

<style>
.hideme
{
    display:none;
    visibility:hidden;
}
.showme
{
    display:inline;
    visibility:visible;
}
</style>

</body>
</html>