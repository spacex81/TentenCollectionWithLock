import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel.shared

    var body: some View {
        VStack {
            LockViewRepresentable(isLocked: viewModel.isLocked, progress: viewModel.progress) {
                print("Locked icon zoom animation completed")
            }
            .frame(width: 200, height: 300) // Set frame size as needed
            .padding()
            
            Slider(value: $viewModel.progress, in: 0...1)
                .padding()
            
            // Provide the items for the collection view
            CustomCollectionViewRepresentable(items: viewModel.items)
                .edgesIgnoringSafeArea(.all)
                .frame(height: 100)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
