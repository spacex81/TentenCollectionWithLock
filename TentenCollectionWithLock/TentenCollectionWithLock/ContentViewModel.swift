import Foundation

class ContentViewModel: ObservableObject {
    static let shared = ContentViewModel()
    
    @Published var isLocked: Bool = false
    @Published var progress: Float = 0.0
}
