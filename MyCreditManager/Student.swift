import Foundation

struct Student {
    let name: String
    var grade: [String:Int]
    
    init(name: String, score: [String : Int]) {
        self.name = name
        self.grade = score
    }
}
