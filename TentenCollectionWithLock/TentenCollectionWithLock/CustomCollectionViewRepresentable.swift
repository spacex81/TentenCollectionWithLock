import SwiftUI
import UIKit

struct CustomCollectionViewRepresentable: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> UIView {
        return CustomCollectionViewContainer()
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Update the view controller if needed
    }
}
