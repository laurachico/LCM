package grailsprojectdirectory
import grails.plugins.springsecurity.Secured
import groovy.time.TimeCategory
import grails.plugins.springsecurity.SpringSecurityService


import org.springframework.dao.DataIntegrityViolationException


class ReportController {
	
	

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def springSecurityService
	
	def index() {
        redirect(action: "list", params: params)
    }

	def show(Long id) {
		def reportInstance = Report.get(id)
		if (!reportInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'report.label', default: 'Report'), id])
			redirect(action: "list")
			return
		}

		[reportInstance: reportInstance]
	}
	
	
	
    def list(Integer max) {
		
		def now = new Date()
		def yearFromNow = now.minus(365)
		
		def user = springSecurityService.getCurrentUser()
		
		def companyUser= user.getCompany()
		
		//def locations = Location.findAllByCompany(String.companyUser)
		//def reportslocation = Report.findAllByLocation(locations)
		
		//def criteria = Report.createCriteria()
		
		//if(!reportslocation.isEmpty()){
		
		//reportslocation = criteria {
			//between("publicationdate", yearFromNow, now)
			
			//and {
				//groupProperty("location")
			//}
			//order("publicationdate", "desc")
		//}//criteria
		
			//render (action: 'list')
			
		//}else{
		
		//println "There are no currently reports available"
		
		//}
        params.max = Math.min(max ?: 10, 100)
        [reportInstanceList: Report.list(params), reportInstanceTotal: Report.count()]
    }

	@Secured(['ROLE_ADMIN'])
	
    def create() {
        [reportInstance: new Report(params)]
    }

	@Secured(['ROLE_ADMIN'])
	
    def save() {
		
		def f = request.getFile('file')
		def namefile = f.getOriginalFilename()
		
		if (f.empty) {
			flash.message = 'file cannot be empty'
			render(view: 'create')
			return
		}//if
		f.transferTo(new File("../GrailsProjectDirectory/web-app/uploadedfiles/${namefile}"))
		
		params.filename = namefile

		def currentdate = new Date()
		params.publicationdate = currentdate
		
		
        def reportInstance = new Report(params)
        if (!reportInstance.save(flush: true)) {
            render(view: "create", model: [reportInstance: reportInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'report.label', default: 'Report'), reportInstance.id])
        redirect(action: "show", id: reportInstance.id)
    }


    def edit(Long id) {
        def reportInstance = Report.get(id)
        if (!reportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'report.label', default: 'Report'), id])
            redirect(action: "list")
            return
        }

        [reportInstance: reportInstance]
    }

    def update(Long id, Long version) {
        def reportInstance = Report.get(id)
        if (!reportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'report.label', default: 'Report'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (reportInstance.version > version) {
                reportInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'report.label', default: 'Report')] as Object[],
                          "Another user has updated this Report while you were editing")
                render(view: "edit", model: [reportInstance: reportInstance])
                return
            }
        }

        reportInstance.properties = params

        if (!reportInstance.save(flush: true)) {
            render(view: "edit", model: [reportInstance: reportInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'report.label', default: 'Report'), reportInstance.id])
        redirect(action: "show", id: reportInstance.id)
    }



} //class
