import Foundation

final class CreditManager {

    // MARK: -Property
    static let shared: CreditManager = .init()
    var students: [Student] = []
    
    // MARK: -Initializer
    private init() { }
    
}
