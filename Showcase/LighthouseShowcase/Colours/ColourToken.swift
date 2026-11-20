import SwiftUI
import UIKit

struct ColourToken: Identifiable {
    /// The `LighthouseColor` property name, e.g. `backgroundBasePrimary`.
    let name: String
    /// The token path within its group, e.g. `Base / Primary`.
    let path: String
    let color: Color

    var id: String { name }

    var light: UIColor { resolved(.light) }
    var dark: UIColor { resolved(.dark) }

    private func resolved(_ style: UIUserInterfaceStyle) -> UIColor {
        UIColor(color).resolvedColor(with: UITraitCollection(userInterfaceStyle: style))
    }
}

extension UIColor {
    /// `#RRGGBB`, followed by the alpha as a percentage when it isn't fully opaque.
    var hexDescription: String {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        let hex = String(
            format: "#%02X%02X%02X",
            Int((red * 255).rounded()),
            Int((green * 255).rounded()),
            Int((blue * 255).rounded())
        )
        return alpha < 1 ? "\(hex) \(Int((alpha * 100).rounded()))%" : hex
    }
}
