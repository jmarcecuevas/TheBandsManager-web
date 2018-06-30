<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TBM | Register</title>

    <asset:stylesheet src="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>
    <asset:stylesheet src="/plugins/iCheck/custom.css" />
</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <s2ui:formContainer type='register' focus='username' width='360px'>
            <s2ui:form class="m-t" beanName='registerCommand'>
                <g:if test='${emailSent}'>
                    <br/>
                    <g:message code='spring.security.ui.register.sent'/>
                </g:if>
                <g:else>
                    <p>Create account to see it in action.</p>
                    <br/>

                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Username" required="" name="username">
                    </div>

                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email" required="" name="email">
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password" required="" name="password">
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password (again)" required="" name="password2">
                    </div>

                    <button type="submit" class="btn btn-primary block full-width m-b" id="submit">Create your account</button>

                    <p class="text-muted text-center"><small>Already have an account?</small></p>
                    <a class="btn btn-sm btn-white btn-block" href="login">Login</a>

                </g:else>
            </s2ui:form>
        </s2ui:formContainer>

        <p class="m-t"> <small>TBM TheBandsManager &copy; 2018</small> </p>
    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="/jquery-3.1.1.min.js"/>
<asset:javascript src="/bootstrap.min.js"/>
<!-- iCheck -->
<asset:javascript src="/plugins/iCheck/icheck.min.js"/>
<script>
    $(document).ready(function(){
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
</script>
</body>
</html>
