<!doctype html>
<html>

<table>
    <thead>
    <tr>
        <th>Sn</th>
        <th>Username</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>

    </tr>

    </thead>

    <g:each in="${users}" var="user" status="i">

        <tr>
            <td>${i+1}</td>

            <td>${user.userName}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td>
                <g:link action="edit" id="${user.id}"> Edit</g:link>
                <g:link action="delete" id="${user.id}" > Delete</g:link>
            </td>
        </tr>
    </g:each>


</table>

</html>