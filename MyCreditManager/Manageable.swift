import Foundation

protocol Manageable {
    
    func addStudent(student: Student) -> Result<Void,Error>
    
    func removeStudent(studentName: String) -> Result<Void,Error>
    
    func addGrade(name: String, grade: String) -> Result<Void,Error>
    
    
}
