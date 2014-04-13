<%@ page import="grailsprojectdirectory.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	
		<style>
			.highlight {
 
  				padding: 9px 14px;
  				margin-bottom: 14px;
  				background-color: #f7f7f9;
  				border: 1px solid #e1e1e8;
  				border-radius: 4px;
				}

		</style>
	
	
	</head>
	<body>

		<div class="highlight">
		<div id="create-location" class="content scaffold-create" role="main">
			<h1>Create a location</h1>
			<br>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${locationInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${locationInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" method="post" enctype="multipart/form-data">
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
