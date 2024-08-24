import SwiftUI

struct LockViewRepresentable: UIViewRepresentable {
    
    var isLocked: Bool
    var progress: Float
    var onLockedIconZoomAnimationCompletion: () -> Void
    
    func makeUIView(context: Context) -> LockView {
        let lockView = LockView()
        lockView.layer.borderColor = UIColor.red.cgColor
        lockView.layer.borderWidth = 10
        return lockView
    }
    
    func updateUIView(_ uiView: LockView, context: Context) {
        uiView.isLocked = isLocked
        uiView.progress = progress
        
        // If you need to trigger the zoom animation from SwiftUI
        if isLocked {
            uiView.performLockedIconZoomAnimation(completion: onLockedIconZoomAnimationCompletion)
        }
    }
}
