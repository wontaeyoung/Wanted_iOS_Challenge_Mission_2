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
    
    
}
