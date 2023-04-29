import Foundation

enum CreditManageError: Error {
    case unfindable(name: String)
    case duplicateStudent(name: String)
    case invalidGrade(alphabetGrade: String)
    case invalidSubject(
        studentName: String,
        subjectName: String
    )
}
