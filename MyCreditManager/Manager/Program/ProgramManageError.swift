import Foundation

enum ProgramManageError: Error {
    case invalidMenu
    case invalidInput
    case invalidGrade
}

extension ProgramManageError: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .invalidMenu:
            return "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요."
            
        case .invalidInput:
            return "입력이 잘못되었습니다. 다시 확인해주세요."
            
        case .invalidGrade:
            return "유효하지 않은 등급입니다. 다시 확인해주세요."
        }
    }
}
