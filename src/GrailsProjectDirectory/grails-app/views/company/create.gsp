<%@ page import="grailsprojectdirectory.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="highlight">
		<div id="create-company" class="content scaffold-create" role="main">
			<h1>Create a company</h1>
			<br>
			<g:hasErrors bean="${companyInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${companyInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<br>
					<g:submitButton name="create" class="btn btn-warning" value="Create" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
