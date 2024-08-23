import SwiftUI
import UIKit

struct CustomCollectionViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return CustomCollectionViewContainer()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
