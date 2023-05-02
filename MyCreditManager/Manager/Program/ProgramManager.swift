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

}
