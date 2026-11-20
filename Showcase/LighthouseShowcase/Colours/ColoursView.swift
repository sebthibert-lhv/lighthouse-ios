import SwiftUI
import UIKit

struct ColoursView: View {
    @State private var searchText = ""
    @State private var appearance: Appearance = .system
    @State private var copiedTokenName: String?

    var body: some View {
        List {
            ForEach(filteredGroups) { group in
                Section(group.title) {
                    ForEach(group.tokens) { token in
                        Button {
                            copy(token)
                        } label: {
                            ColourRow(token: token)
                        }
                        .tint(.primary)
                    }
                }
            }
        }
        .overlay {
            if filteredGroups.isEmpty {
                ContentUnavailableView.search(text: searchText)
            }
        }
        .overlay(alignment: .bottom) {
            if let copiedTokenName {
                Text("Copied LighthouseColor.\(copiedTokenName)")
                    .font(.footnote)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(.regularMaterial, in: Capsule())
                    .padding(.bottom, 16)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .navigationTitle("Colours")
        .searchable(text: $searchText, prompt: "Search tokens")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Picker("Appearance", selection: $appearance) {
                    ForEach(Appearance.allCases) { appearance in
                        Label(appearance.title, systemImage: appearance.systemImage)
                            .tag(appearance)
                    }
                }
                .pickerStyle(.menu)
            }
        }
        .preferredColorScheme(appearance.colorScheme)
    }

    private var filteredGroups: [ColourGroup] {
        let query = searchText.trimmingCharacters(in: .whitespaces)
        guard !query.isEmpty else { return ColourGroup.all }
        return ColourGroup.all.compactMap { group in
            let tokens = group.tokens.filter { token in
                token.name.localizedCaseInsensitiveContains(query)
                    || "\(group.title) / \(token.path)".localizedCaseInsensitiveContains(query)
            }
            return tokens.isEmpty ? nil : ColourGroup(title: group.title, tokens: tokens)
        }
    }

    private func copy(_ token: ColourToken) {
        UIPasteboard.general.string = "LighthouseColor.\(token.name)"
        withAnimation { copiedTokenName = token.name }
        Task {
            try? await Task.sleep(for: .seconds(1.5))
            guard copiedTokenName == token.name else { return }
            withAnimation { copiedTokenName = nil }
        }
    }
}

private enum Appearance: String, CaseIterable, Identifiable {
    case system, light, dark

    var id: Self { self }

    var title: String {
        switch self {
        case .system: "System"
        case .light: "Light"
        case .dark: "Dark"
        }
    }

    var systemImage: String {
        switch self {
        case .system: "circle.lefthalf.filled"
        case .light: "sun.max"
        case .dark: "moon"
        }
    }

    var colorScheme: ColorScheme? {
        switch self {
        case .system: nil
        case .light: .light
        case .dark: .dark
        }
    }
}

#Preview {
    NavigationStack {
        ColoursView()
    }
}
