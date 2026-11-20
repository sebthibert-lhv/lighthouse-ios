import SwiftUI

struct ShowcaseHomeView: View {
    var body: some View {
        List {
            Section("Tokens") {
                NavigationLink {
                    ColoursView()
                } label: {
                    Label("Colours", systemImage: "paintpalette")
                }
            }
        }
        .navigationTitle("Lighthouse")
    }
}

#Preview {
    NavigationStack {
        ShowcaseHomeView()
    }
}
