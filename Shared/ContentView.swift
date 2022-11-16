import SwiftUI
import AVKit

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    @State private var currentDate = Date()
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
            DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
            VideoPlayer(player: AVPlayer(url: viewModel.videoUrl as URL))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
