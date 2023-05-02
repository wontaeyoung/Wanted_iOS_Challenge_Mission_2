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

extension CreditManageError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case let .unfindable(name):
            return "\(name) 학생을 찾지 못했습니다."
            
        case let .duplicateStudent(name):
            return "\(name)은 이미 존재하는 학생입니다. 추가하지 않습니다."
            
        case let .invalidGrade(alphabetGrade):
            return "\(alphabetGrade)은 존재하지 않는 성적입니다."
            
        case let .invalidSubject(studentName, subjectName):
            return "\(studentName) 학생은 \(subjectName) 과목을 수강하지 않습니다."
            
        }
        
    }
    
}
