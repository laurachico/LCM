<%@ page import="grailsprojectdirectory.Report" %>



<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'filename', 'error')} ">
	<label for="filename">
		<g:message code="report.filename.label" default="Filename" />
		
	</label>
	
	<input type="file" name="file" class="form-control"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="report.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="location" name="location.id" from="${grailsprojectdirectory.Location.list()}" optionKey="id" required="" value="${reportInstance?.location?.id}" class="many-to-one"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="report.name.label" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${reportInstance?.name}"/>
</div>

<!-- <div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'publicationdate', 'error')} required">
	<label for="publicationdate">
		<g:message code="report.publicationdate.label" default="Publicationdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="publicationdate" precision="day"  value="${reportInstance?.publicationdate}"  />
</div>-->

