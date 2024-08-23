import SwiftUI

struct ContentView: View {
    @State private var isLocked: Bool = false
    @State private var progress: Float = 0.0

    var body: some View {
        VStack {
            LockViewRepresentable(isLocked: isLocked, progress: progress) {
                print("Locked icon zoom animation completed")
            }
            .frame(width: 200, height: 300) // Set frame size as needed
            .padding()
            
            Slider(value: $progress, in: 0...1)
                .padding()
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
