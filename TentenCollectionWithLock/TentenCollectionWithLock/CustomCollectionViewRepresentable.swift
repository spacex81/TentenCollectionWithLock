import SwiftUI

struct CustomCollectionViewRepresentable: UIViewControllerRepresentable {
    
    let items: [String] // Add an items parameter
    
    func makeUIViewController(context: Context) -> CustomCollectionViewController {
        return CustomCollectionViewController(items: items) // Pass the items
    }
    
    func updateUIViewController(_ uiViewController: CustomCollectionViewController, context: Context) {
        // Update your view controller if needed
    }
}
