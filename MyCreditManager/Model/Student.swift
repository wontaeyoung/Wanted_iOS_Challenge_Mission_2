import Foundation

struct Student {
    
    let name: String
    var grade: [String: Grade]
    
    init(name: String, grade: [String: Grade]) {
        self.name = name
        self.grade = grade
    }
    
}
