import Foundation

extension VideoPlayerView {
    class ViewModel: ObservableObject {
        private var path: String
        @Published var videoUrl: NSURL
        
        init() {
            path = Bundle.main.path(forResource: "oceanSunset", ofType: ".mp4")!
            videoUrl = NSURL(fileURLWithPath: path)
        }
    }
}
