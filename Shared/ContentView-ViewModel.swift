import Foundation

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var url = Bundle.main.path(forResource: "oceanSunset", ofType: ".mp4")
    }
}
