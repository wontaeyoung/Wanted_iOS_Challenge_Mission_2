import Foundation

enum ProgramManageError: Error {
    case chooseInvalidFunction
    case inputInvalidText
}

extension ProgramManageError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .chooseInvalidFunction:
            return NSLocalizedString(
                "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.",
                comment: self.localizedDescription
            )
        case .inputInvalidText:
            return NSLocalizedString(
                "입력이 잘못되었습니다. 다시 확인해주세요",
                comment: self.localizedDescription
            )
        }
    }
}
