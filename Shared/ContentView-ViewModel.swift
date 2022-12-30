import Foundation

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var choosenTime: Date = Date()
        @Published var timeRemaining = 100
    }
}
