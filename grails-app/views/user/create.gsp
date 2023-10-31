<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-user" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.user}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form resource="${this.user}" method="POST">
        <fieldset class="form">
            <div class="form-group">
                <label>Nom d'utilisateur *</label>
                <g:textField name="username" class="form-control" value="${user?.username}" placeholder="Veuillez saisir le nom d'utilisateur"/>
            </div>

            <div class="form-group">
                <label>Mot de passe *</label>
                <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Veuillez saisir le mot de passe"/>
            </div>

            <div class="form-group">
                <label>Illustration</label>
                <select name="thumbnail.id" class="form-control">
                    <option value="">Sélectionner une illustration</option>
                    <g:each in="${grails_mbds_22_23.Illustration.list()}" var="illustration">
                        <option value="${illustration.id}">${illustration.name}</option>
                    </g:each>
                </select>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
