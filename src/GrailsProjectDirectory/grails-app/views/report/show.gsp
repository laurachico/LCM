
<%@ page import="grailsprojectdirectory.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


		<div id="show-report" class="content scaffold-show" role="main">
			<h1>Your report was successfully uploaded!</h1>

			<ol class="property-list report">
			
				<g:if test="${reportInstance?.filename}">
				<li class="fieldcontain">
					<span id="filename-label" class="property-label"><g:message code="report.filename.label" default="Filename" /></span>
					
						<span class="property-value" aria-labelledby="filename-label"><g:fieldValue bean="${reportInstance}" field="filename"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="report.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:link controller="location" action="show" id="${reportInstance?.location?.id}">${reportInstance?.location?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="report.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${reportInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reportInstance?.publicationdate}">
				<li class="fieldcontain">
					<span id="publicationdate-label" class="property-label"><g:message code="report.publicationdate.label" default="Publicationdate" /></span>
					
						<span class="property-value" aria-labelledby="publicationdate-label"><g:formatDate date="${reportInstance?.publicationdate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${reportInstance?.id}" />
					<g:link class="btn btn-warning" action="edit" id="${reportInstance?.id}">Edit</g:link>
					<g:actionSubmit class="btn btn-warning" action="delete" value="Delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
