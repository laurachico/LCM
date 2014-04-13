
<%@ page import="grailsprojectdirectory.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	
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
		
		<div id="show-location" class="content scaffold-show" role="main">
			<h1>Location list</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list location">
			
				<g:if test="${locationInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="location.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${locationInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="location.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${locationInstance?.company?.id}">${locationInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="location.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${locationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${locationInstance?.id}" />
					<g:link class="edit" action="edit" id="${locationInstance?.id}">Edit</g:link>
					<br>
					<g:actionSubmit class="btn btn-warning" action="delete" value="Delete"onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
