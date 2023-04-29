import Foundation

protocol CreditManageable {
    
    var students: [Student] { get set }
    
    func addStudent(name: String) -> Result<String,CreditManageError>
    
    func removeStudent(name: String) -> Result<String,CreditManageError>
    
    func addGrade(
        studentName: String,
        subjectName: String,
        alphabetGrade: String
    ) -> Result<String,CreditManageError>
    
    func removeGrade(
        studentName: String,
        subjectName: String
    ) -> Result<String,CreditManageError>
    
    func getGPA(studentName: String) -> Result<String,CreditManageError>
    
}
