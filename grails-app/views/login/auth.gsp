<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TheBandsManager | Login</title>

    <asset:stylesheet src="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>
    <asset:stylesheet src='spring-security-ui-auth.css'/>
</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>
            <h1 class="logo-name">TBD</h1>
        </div>

        <h3>Bienvenido a TheBandsManager</h3>
        <p></p>
        <p>Login in. To see it in action.</p>

        <s2ui:form class="m-t" type='login' focus='username'>
            <div class="form-group">
                <input class="form-control" placeholder="Username" type="text" name="${securityConfig.apf.usernameParameter}" id="username" autofocus/>
            </div>

            <div class="form-group">
                <input class="form-control" placeholder="Password" type="password" name="${securityConfig.apf.passwordParameter}" id="password"/>
            </div>

            <div class="checkbox">
                <label>
                    <input name="${securityConfig.rememberMe.parameter}" type="checkbox" id="remember_me" checked="checked" value="Remember Me">Remember Me
                </label>
            </div>

            <button class="btn btn-primary block full-width m-b" type="submit" value="Submit">Login</button>

            <g:link controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>
            <p class="text-muted text-center"><small>Do not have an account?</small></p>

            <g:link controller="register" action="register" style="text-decoration: none">
                <button class="btn btn-sm btn-white btn-block" type="button">Create an account</button>
            </g:link>

        </s2ui:form>

        <p class="m-t"> <small>Cuevas,Molina,Moyano &copy; 2018</small> </p>
    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="/jquery-3.1.1.min.js"/>
<asset:javascript src="/bootstrap.min.js"/>

</body>

</html>