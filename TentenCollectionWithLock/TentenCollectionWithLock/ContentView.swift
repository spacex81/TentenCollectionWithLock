import SwiftUI

struct ContentView: View {
    var body: some View {
        HorizontalCollectionViewRepresentable()
            .edgesIgnoringSafeArea(.all)
            .frame(height: 100)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
