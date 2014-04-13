
<%@ page import="grailsprojectdirectory.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title>LCM Ltd. Location</title>
	
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
			<g:link class="create" action="create">New Location</g:link>
			
		</div>
		<br>
		<div class="highlight">
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'location.address.label', default: 'Address')}" />
						
						<th><g:message code="location.company.label" default="Company" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'location.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${locationInstanceList}" status="i" var="locationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: locationInstance, field: "company")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
