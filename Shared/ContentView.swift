import SwiftUI
import AVKit
import Foundation

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    @State var currentDate = Date.now
    let formatter = DateFormatter()
//    @State private var timeRemaining = 100
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("Welcome to Rise!")
                .padding()
            DatePicker("", selection: $viewModel.choosenTime, displayedComponents: .hourAndMinute)
            Text("Chosen time: \(viewModel.choosenTime) Current Time: \(currentDate)")
//            Text("Time Remaining: \(timeRemaining)")
            //timeRemaining = currentTime === viewModel.choosenTime show something
            VideoPlayerView()
        }.onReceive(timer) { time in
            currentDate = Date.now
            if Calendar.current.isDate(currentDate, equalTo: viewModel.choosenTime, toGranularity: .second) {
                print("🔔💥🔔💥🔔💥🔔💥🔔💥🔔💥")
            } else {
                print("...")
                print("currentDate", currentDate)
                print("choosenTime", viewModel.choosenTime)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
