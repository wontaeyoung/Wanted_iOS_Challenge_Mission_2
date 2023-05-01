import Foundation

final class CreditManager {

    // MARK: -Property
    static let shared: CreditManager = .init()
    var students: [Student] = []
    
    // MARK: -Initializer
    private init() { }
    
    // MARK: -Method
    func getStudent(name: String) -> Result<Student, CreditManageError> {
        guard let student = students.first(
            where: { $0.name == name }
        ) else {
            return .failure(
                .unfindable(name: name)
            )
        }
        return .success(student)
    }
    
    func isContain(studentName: String) -> Bool {
        return students.map{$0.name}.contains(studentName)
    }
    
    func getStudentIndexWithName(name: String) -> Int? {
        return students.map{$0.name}.firstIndex(of: name)
    }
    
}

extension CreditManager: CreditManageable {
    
    // MARK: -Method
    func addStudent(name: String) -> Result<String, CreditManageError> {
        
        guard isContain(studentName: name) == false else {
            return .failure(
                .duplicateStudent(name: name)
            )
        }
        
        let newStudent: Student = .init(
            name: name,
            grade: .init()
        )
        
        students.append(newStudent)
        
        return .success("\(name) 학생을 추가했습니다.")
    }
    
    func removeStudent(name: String) -> Result<String, CreditManageError> {
        
        guard let index = getStudentIndexWithName(name: name) else {
            return .failure(
                .unfindable(name: name)
            )
        }
        
        students.remove(at: index)
        
        return .success("\(name) 학생을 삭제하였습니다.")
    }
    
    func addGrade(
        studentName: String,
        subjectName: String,
        alphabetGrade: String
    ) -> Result<String, CreditManageError> {
        
        guard let index = getStudentIndexWithName(name: studentName) else {
            return .failure(
                .unfindable(name: studentName)
            )
        }
        
        guard let grade = Grade.init(rawValue: alphabetGrade) else {
            return .failure(
                .invalidGrade(alphabetGrade: alphabetGrade)
            )
        }
        
        students[index].grade[subjectName] = grade
        
        return .success("\(studentName) 학생의 \(subjectName) 과목이 \(alphabetGrade)로 추가(변경)되었습니다.")
        
    }
    
    
}
