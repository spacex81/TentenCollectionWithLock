import SwiftUI
import UIKit

struct HorizontalCollectionViewRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> HorizontalCollectionViewController {
        return HorizontalCollectionViewController()
    }
    
    func updateUIViewController(_ uiViewController: HorizontalCollectionViewController, context: Context) {
        // Update the view controller if needed
    }
}
