%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['List']"/>

        %{--Actions--}%
        <span class="float-right">

            %{--Search Panel --}%
            <div class="btn-group">
                <g:form controller="user" action="index" method="GET">
                    <div class="input-group" id="search-area">
                        <g:select name="colName" class="form-control" from="[username: 'username', enabled: 'Enabled']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Search</button>
                        </span>
                    </div>
                </g:form>
            </div>

            %{--Create and Reload Panel--}%
            <div class="btn-group">
                <g:link controller="user" action="create" class="btn btn-success"><g:message code="create"/></g:link>
                <g:link controller="user" action="index" class="btn btn-primary"><g:message code="reload"/></g:link>
            </div>
        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th><g:message code="username"/></th>
                <th><g:message code="enabled"/></th>
                <th class="action-row"><g:message code="action"/></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${userList}" var="user">
                <tr>
                    <td>${user?.username}</td>
                    <td>${user?.enabled}</td>

                    %{--Table Actions --}%
                    <td>
                        <div class="btn-group">
                            <g:link controller="user" action="show" class="btn btn-secondary" id="${user.id}">show</g:link>
                            <g:link controller="user" action="edit" class="btn btn-secondary" id="${user.id}">edit</i></g:link>
                            <g:link controller="user" action="delete" id="${user.id}" class="btn btn-secondary delete-confirmation">delete</g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        %{--Pagination Area--}%
        <div class="paginate">
            <g:paginate total="${userCount ?: 0}" />
        </div>
    </div>
</div>
