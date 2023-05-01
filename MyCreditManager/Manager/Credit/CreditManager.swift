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
    
}
