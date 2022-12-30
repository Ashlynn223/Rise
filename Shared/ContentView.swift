import SwiftUI
import AVKit
import Foundation

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var currentDate = Date.now
    let formatter = DateFormatter()
//    @State private var timeRemaining = 100
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("Welcome to Rise!")
                .padding()
            DatePicker("", selection: $viewModel.choosenTime, displayedComponents: .hourAndMinute)
            Text("Chosen time: \(viewModel.choosenTime) Current Time: \(currentDate)")
//            Text("Time Remaining: \(timeRemaining)")
            VideoPlayerView()
        }
        
//        .onReceive(timer) { time in
//            if timeRemaining > 0 {
//                timeRemaining -= 1
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
