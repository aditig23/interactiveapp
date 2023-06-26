import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack (spacing: 50) {
            Text("What is your name?")
                .font(.title)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.purple, width: 1)
                .padding()
            Button("Submit Name:") {
                textTitle = "Welcome \(name)"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
