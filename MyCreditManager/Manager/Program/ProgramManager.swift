import Foundation

final class ProgramManager: ProgramManageable {
    
    // MARK: -Enum
    private enum RegExpPattern: String {
        case english = "^[a-zA-Z]*$"
        case addGrade = "^[a-zA-Z]+\\s[a-zA-Z]+\\s.{1,2}$"
        case removeGrade = "^[a-zA-Z]+\\s[a-zA-Z]$"
    }
    
}
