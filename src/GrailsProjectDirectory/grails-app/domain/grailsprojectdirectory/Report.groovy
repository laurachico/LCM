package grailsprojectdirectory

class Report {
	
	String name
	
	Date publicationdate
	String filename

	
	static belongsTo = [location:Location]
	
	String toString(){
		return name
	}

    static constraints = {
    }
}
