<!doctype html>
<html>

<table>
    <g:form controller="user" action="update" method = "post">


      <tr>  <th>Username</th> <td> <g:textField name="userName" value="${user.userName}" ></g:textField></td></tr>
    <tr>  <th>PassWord</th> <td> <g:passwordField  value="${user.passWord}" name="passWord" ></g:passwordField></td></tr>
    <tr>  <th>Email</th> <td> <g:textField name="email" value="${user.email}"></g:textField></td></tr>
       <g:hiddenField name="id" value="${user.id}"></g:hiddenField>
    </table>
<tr> <g:submitButton  class="button" name="Update"></g:submitButton> </tr>
</g:form>


</html>