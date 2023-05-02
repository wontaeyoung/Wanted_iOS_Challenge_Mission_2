import Foundation

final class ProgramManager: ProgramManageable {
    
    // MARK: -Enum
    private enum RegExpPattern: String {
        case english = "^[a-zA-Z]*$"
        case addGrade = "^[a-zA-Z]+\\s[a-zA-Z]+\\s.{1,2}$"
        case removeGrade = "^[a-zA-Z]+\\s[a-zA-Z]$"
    }
    
    private enum Menu: String, CaseIterable {
        case addStudent = "1"
        case removeStudent = "2"
        case addGrade = "3"
        case removeGrade = "4"
        case gradeInquiry = "5"
        case exitProgram = "X"
        
        func getMenuDescription() -> String {
            switch self {
            case .addStudent:
                return "추가할 학생의 이름을 입력해주세요."
            case .removeStudent:
                return "삭제할 학생의 이름을 입력해주세요."
            case .addGrade:
                return "성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.\n입력예) Mickey Swift A+\n만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다."
            case .removeGrade:
                return "성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요."
            case .gradeInquiry:
                return "평점을 알고싶은 학생의 이름을 입력해주세요."
            case .exitProgram:
                return "프로그램을 종료합니다..."
            }
        }
    }

    // MARK: -Property
    static let shared: ProgramManager = .init()
    private let creditManager: CreditManager = .shared
    
    // MARK: -Initializer
    private init() { }
    
}
// MARK: -유효성 검사 관련 메서드 익스텐션
extension ProgramManager {
    
    private func isValidFunctionChoice(choice: String) -> Bool {
        return Menu
            .allCases
            .map{$0.rawValue}
            .contains(choice)
    }
    
    private func isCorrectPattern(
        regExp: RegExpPattern,
        input: String
    ) -> Bool {
        
        let pattern = regExp.rawValue
        
        return input.range(
            of: pattern,
            options: .regularExpression
        ) != nil
    }
}

// MARK: -출력 관련 메서드 익스텐션
extension ProgramManager {
    
}

