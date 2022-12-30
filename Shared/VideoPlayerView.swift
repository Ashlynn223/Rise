import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        VideoPlayer(player: AVPlayer(url: viewModel.videoUrl as URL))
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
