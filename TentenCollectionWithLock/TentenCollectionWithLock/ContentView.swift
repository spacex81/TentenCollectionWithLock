import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel.shared

    var body: some View {
        VStack {
            
            Text("isLocked is \(viewModel.isLocked ? "True" : "False")")
            
            LockViewRepresentable(isLocked: viewModel.isLocked, progress: viewModel.progress) {
                print("Locked icon zoom animation completed")
            }
                .frame(width: 100, height: 100) // Set frame size as needed
                .padding()
            
            CustomCollectionViewRepresentable(items: viewModel.items)
                .frame(height: 100)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
