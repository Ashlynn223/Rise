import SwiftUI
import AVKit

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
            VideoPlayer(player: AVPlayer(url: URL(string: viewModel.url!)!))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
