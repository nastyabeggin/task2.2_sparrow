import SwiftUI

// custom modifier that disables preventing widowed lines
public extension String {
    var fixWidow: String {
        self + "\u{200B}\u{200B}\u{200B}\u{200B}"
    }
}

struct ContentView: View {
    @State var containerWidth = 150.0;
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Марафон ")
                    .fontWeight(.thin)
                    .foregroundStyle(.secondary)
                + Text("по SwiftUI".fixWidow)
                    .bold()
                Text("«Отцовский Пинок»")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.blue)
            }
            .frame(width: containerWidth, height: 200)
            .border(.red)
            Slider(value: $containerWidth, in: 100.0...300.0, step: 0.1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
