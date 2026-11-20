import SwiftUI
import UIKit

struct ColourRow: View {
    let token: ColourToken

    var body: some View {
        HStack(spacing: 12) {
            ColourSwatch(light: Color(uiColor: token.light), dark: Color(uiColor: token.dark))
                .frame(width: 64, height: 44)

            VStack(alignment: .leading, spacing: 2) {
                Text(token.name)
                    .font(.footnote.monospaced())
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                Text(token.path)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                HStack(spacing: 8) {
                    Label(token.light.hexDescription, systemImage: "sun.max")
                    Label(token.dark.hexDescription, systemImage: "moon")
                }
                .font(.caption2.monospaced())
                .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 2)
        .accessibilityElement(children: .combine)
    }
}

/// Shows the light (left) and dark (right) variants side by side over a
/// checkerboard, so translucent tokens are visible.
private struct ColourSwatch: View {
    let light: Color
    let dark: Color

    var body: some View {
        HStack(spacing: 0) {
            light
            dark
        }
        .background(Checkerboard())
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(.separator, lineWidth: 1)
        }
    }
}

private struct Checkerboard: View {
    var squareSize: CGFloat = 6

    var body: some View {
        Canvas { context, size in
            context.fill(Path(CGRect(origin: .zero, size: size)), with: .color(.white))
            let columns = Int((size.width / squareSize).rounded(.up))
            let rows = Int((size.height / squareSize).rounded(.up))
            for row in 0..<rows {
                for column in 0..<columns where (row + column).isMultiple(of: 2) {
                    let rect = CGRect(
                        x: CGFloat(column) * squareSize,
                        y: CGFloat(row) * squareSize,
                        width: squareSize,
                        height: squareSize
                    )
                    context.fill(Path(rect), with: .color(Color(white: 0.8)))
                }
            }
        }
    }
}

#Preview {
    List {
        ColourRow(token: ColourGroup.all[0].tokens[0])
        ColourRow(token: ColourGroup.all[3].tokens[0])
    }
}
