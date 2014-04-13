package grailsprojectdirectory

class Location {
	
	
	String name
	String address
	
	static belongsTo = [company:Company]
	
	String toString(){
		return name
	}

    static constraints = {
    }
}
