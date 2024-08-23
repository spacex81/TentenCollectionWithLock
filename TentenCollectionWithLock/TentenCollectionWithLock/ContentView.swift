import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomCollectionViewRepresentable()
            .edgesIgnoringSafeArea(.all)
            .frame(height: 300)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
