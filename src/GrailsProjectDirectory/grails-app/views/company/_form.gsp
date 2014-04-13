<%@ page import="grailsprojectdirectory.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${companyInstance?.name}"/>
</div>

