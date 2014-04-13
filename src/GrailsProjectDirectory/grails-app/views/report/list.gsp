
<%@ page import="grailsprojectdirectory.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="highlight">
		<div id="list-report" class="content scaffold-list" role="main">
			<h1>Uploaded reports list</h1>

			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="filename" title="${message(code: 'report.filename.label', default: 'Filename')}" />
					
						<th><g:message code="report.location.label" default="Location" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'report.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="publicationdate" title="${message(code: 'report.publicationdate.label', default: 'Publicationdate')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reportInstanceList}" status="i" var="reportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reportInstance.id}">${fieldValue(bean: reportInstance, field: "filename")}</g:link></td>
					
						<td>${fieldValue(bean: reportInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: reportInstance, field: "name")}</td>
					
						<td><g:formatDate date="${reportInstance.publicationdate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reportInstanceTotal}" />
			</div>
		</div>
		</div>
	</body>
</html>
