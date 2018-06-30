<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TBM | Forgot password</title>

    <asset:stylesheet src="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>


</head>

<body class="gray-bg">

<div class="passwordBox animated fadeInDown">
    <div class="row">

        <div class="col-md-12">
            <div class="ibox-content">

                <div class="row">

                    <div class="col-lg-12">
                        <s2ui:formContainer type='forgotPassword' focus='username' width='100%'>
                            <s2ui:form beanName='forgotPasswordCommand'>
                                <g:if test='${emailSent}'>
                                    <br/>
                                    <g:message code='spring.security.ui.forgotPassword.sent'/>
                                </g:if>
                                <g:else>
                                    <br/>
                                    <p>
                                        Enter your username and we'll send a link to reset your password to the address we have for your account.
                                    </p>

                                    <div class="form-group">
                                        <input class="form-control" placeholder="Username" type="text" id="username" name="${securityConfig.apf.usernameParameter}"/>
                                    </div>

                                    <button type="submit" class="btn btn-primary block full-width m-b">Reset my password</button>

                                </g:else>
                            </s2ui:form>
                        </s2ui:formContainer>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col-md-6">
            TBM TheBandsManager
        </div>
        <div class="col-md-6 text-right">
            <small>© 20185</small>
        </div>
    </div>
</div>
</body>
</html>
