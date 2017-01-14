<!doctype html>
<html>
<head></head>
<body>
<h5 style="color: red"> ${message}</h5>
<g:form controller="user" action="login" method="post">

    UserName:- <g:textField name="userName"  ></g:textField> <br>
    Password:- <g:passwordField name="passWord" inputtype ="hidden"  ></g:passwordField> <br>
        <g:submitButton  class="button" name="Login"></g:submitButton>

</g:form>

<p><H5>If are not a user sign up here</H5></p> <br>

<g:form controller = "user" action="signUp" method="post">
FirstName: <g:textField name = "firstName"></g:textField><br>
LastName:<g:textField name="lastName"></g:textField><br>
Email:<g:textField name="email"></g:textField><br>
UserName:<g:textField name="userName"></g:textField><br>
Password:<g:passwordField name="passWord"></g:passwordField><br>
    <g:submitButton class="button" name="Sign Up"></g:submitButton>
</g:form>


</body>
</html>