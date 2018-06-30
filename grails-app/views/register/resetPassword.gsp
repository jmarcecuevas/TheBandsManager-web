<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TBM | Update password</title>

    <asset:stylesheet src="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>

</head>
<body>
<s2ui:formContainer type='resetPassword' focus='password' width='475px'>
    <s2ui:form beanName='resetPasswordCommand'>
        <g:hiddenField name='t' value='${token}'/>
        <div class="sign_in">
            <br/>
            <p>
            Enter your new password
            </p>

            <div class="form-group">
                <input class="form-control" placeholder="Password" type="password" name="password"/>
            </div>

            <div class="form-group">
                <input class="form-control" placeholder="Password (again)" type="password" name="password2"/>
            </div>

            <button type="submit" id="submit" class="btn btn-primary block full-width m-b">Update my password</button>
        </div>
    </s2ui:form>
</s2ui:formContainer>
</body>
</html>
