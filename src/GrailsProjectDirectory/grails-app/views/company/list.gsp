
<%@ page import="grailsprojectdirectory.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title>LCM Ltd. Company</title>
		
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
			
			<g:link class="create" action="create">New Company</g:link>
			
		</div>

	<div class="highlight">
		<h2>Company list</h2>
		<g:each in="${companyInstanceList}" status="i" var="companyInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			<br>		
			<td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "name")}</g:link></td>
			</tr>
		</g:each>
	</div>	
	</body>
</html>
