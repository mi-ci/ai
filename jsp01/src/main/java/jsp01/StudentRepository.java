package jsp01;

import java.util.ArrayList;

public class StudentRepository {
	private ArrayList<Student> listOfStudents = new ArrayList<Student>();
	
	public StudentRepository() {
		listOfStudents.add();
	}
	
	
	public int getrow() {
		return listOfStudents.size();
	}
}
