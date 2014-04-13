import grailsprojectdirectory.Role
import org.springframework.security.core.userdetails.User
import grailsprojectdirectory.User
import grailsprojectdirectory.UserRole
import grails.plugins.springsecurity.Secured
import grailsprojectdirectory.Company


class BootStrap {

    def init = { servletContext ->
		
		//create two roles: ADMIN_ROLE and USER_ROLE
		def adminRole = new Role (authority:'ROLE_ADMIN').save(flush:true) 
		def userRole = new Role(authority:'ROLE_USER').save(flush:true)
		
		//create two users: 'admin' user with company LCM 
		//and 'sampleUser' with company 'testCompany'
		
		def LCM = new Company (name:'LCM').save(flush:true)
		
		def testCompany = new Company (name:'testCompany').save(flush:true)
		
		
		def admin = new User (username:'admin', password:'admin', company:'LCM', enabled:true)
		admin.save(flush:true)
		
		def sampleUser = new User (username:'sampleUser', password:'sampleUser', company:'testCompany', enabled:true)
		sampleUser.save(flush:true)
		
		//Link the user with their roles
		
		UserRole.create(admin, adminRole, true)
		UserRole.create(sampleUser, userRole, true)
    }
    def destroy = {
    }
}
