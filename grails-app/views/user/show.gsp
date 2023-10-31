<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['List']"/>

<div class="card-body">
    <table class="table table-bordered">
        <thead class="thead-dark">
        <tr>
            <th><g:message code="username"/></th>
            <th><g:message code="miniature"/></th>
        </tr>
        </thead>

        <tbody>
        <g:if test="${user}">
            <tr>
                <td class="text-left">${user.username}</td>
                <td class="text-left">${user.thumbnail}</td>
            </tr>
        </g:if>
        </tbody>
    </table>
        <div class="form-action-panel">
            <g:link controller="user" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>
</div>
