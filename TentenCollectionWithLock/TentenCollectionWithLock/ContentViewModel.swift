import Foundation

class ContentViewModel: ObservableObject {
    static let shared = ContentViewModel()
    
    @Published var isLocked: Bool = false
    @Published var progress: Float = 0.0
    @Published var items: [String] = ["1", "2", "3", "4", "5"]
}
