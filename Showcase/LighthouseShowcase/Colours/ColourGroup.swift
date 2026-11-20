import Lighthouse
import SwiftUI

/// Hand-maintained catalog of `LighthouseColor` tokens, in the same order as
/// `Sources/Lighthouse/Tokens/LighthouseColor.swift`. Update this when tokens are regenerated.
struct ColourGroup: Identifiable {
    let title: String
    let tokens: [ColourToken]

    var id: String { title }

    static let all: [ColourGroup] = [
        ColourGroup(title: "Background", tokens: [
            ColourToken(name: "backgroundBasePrimary", path: "Base / Primary", color: LighthouseColor.backgroundBasePrimary),
            ColourToken(name: "backgroundBaseSecondary", path: "Base / Secondary", color: LighthouseColor.backgroundBaseSecondary),
            ColourToken(name: "backgroundBaseTertiary", path: "Base / Tertiary", color: LighthouseColor.backgroundBaseTertiary),
            ColourToken(name: "backgroundBaseQuaternary", path: "Base / Quaternary", color: LighthouseColor.backgroundBaseQuaternary),
            ColourToken(name: "backgroundElevatedPrimary", path: "Elevated / Primary", color: LighthouseColor.backgroundElevatedPrimary),
            ColourToken(name: "backgroundElevatedSecondary", path: "Elevated / Secondary", color: LighthouseColor.backgroundElevatedSecondary),
            ColourToken(name: "backgroundElevatedTertiary", path: "Elevated / Tertiary", color: LighthouseColor.backgroundElevatedTertiary),
            ColourToken(name: "backgroundElevatedQuaternary", path: "Elevated / Quaternary", color: LighthouseColor.backgroundElevatedQuaternary),
        ]),
        ColourGroup(title: "Foreground", tokens: [
            ColourToken(name: "foregroundPrimary", path: "Primary", color: LighthouseColor.foregroundPrimary),
            ColourToken(name: "foregroundSecondary", path: "Secondary", color: LighthouseColor.foregroundSecondary),
            ColourToken(name: "foregroundTertiary", path: "Tertiary", color: LighthouseColor.foregroundTertiary),
        ]),
        ColourGroup(title: "Separator", tokens: [
            ColourToken(name: "separatorPrimary", path: "Primary", color: LighthouseColor.separatorPrimary),
            ColourToken(name: "separatorSecondary", path: "Secondary", color: LighthouseColor.separatorSecondary),
        ]),
        ColourGroup(title: "Fill", tokens: [
            ColourToken(name: "fillPrimary", path: "Primary", color: LighthouseColor.fillPrimary),
            ColourToken(name: "fillSecondary", path: "Secondary", color: LighthouseColor.fillSecondary),
            ColourToken(name: "fillTertiary", path: "Tertiary", color: LighthouseColor.fillTertiary),
            ColourToken(name: "fillQuaternary", path: "Quaternary", color: LighthouseColor.fillQuaternary),
        ]),
        ColourGroup(title: "Function", tokens: [
            ColourToken(name: "functionErrorPrimary", path: "Error / Primary", color: LighthouseColor.functionErrorPrimary),
            ColourToken(name: "functionErrorSecondary", path: "Error / Secondary", color: LighthouseColor.functionErrorSecondary),
            ColourToken(name: "functionErrorTertiary", path: "Error / Tertiary", color: LighthouseColor.functionErrorTertiary),
            ColourToken(name: "functionWarningPrimary", path: "Warning / Primary", color: LighthouseColor.functionWarningPrimary),
            ColourToken(name: "functionWarningSecondary", path: "Warning / Secondary", color: LighthouseColor.functionWarningSecondary),
            ColourToken(name: "functionWarningTertiary", path: "Warning / Tertiary", color: LighthouseColor.functionWarningTertiary),
            ColourToken(name: "functionSuccessPrimary", path: "Success / Primary", color: LighthouseColor.functionSuccessPrimary),
            ColourToken(name: "functionSuccessSecondary", path: "Success / Secondary", color: LighthouseColor.functionSuccessSecondary),
            ColourToken(name: "functionSuccessTertiary", path: "Success / Tertiary", color: LighthouseColor.functionSuccessTertiary),
            ColourToken(name: "functionActionPrimary", path: "Action / Primary", color: LighthouseColor.functionActionPrimary),
            ColourToken(name: "functionActionSecondary", path: "Action / Secondary", color: LighthouseColor.functionActionSecondary),
            ColourToken(name: "functionActionTertiary", path: "Action / Tertiary", color: LighthouseColor.functionActionTertiary),
            ColourToken(name: "functionTextActionPrimary", path: "Text / Action / Primary", color: LighthouseColor.functionTextActionPrimary),
            ColourToken(name: "functionTextSuccessPrimary", path: "Text / Success / Primary", color: LighthouseColor.functionTextSuccessPrimary),
            ColourToken(name: "functionBrandPrimary", path: "Brand / Primary", color: LighthouseColor.functionBrandPrimary),
            ColourToken(name: "functionBrandSecondary", path: "Brand / Secondary", color: LighthouseColor.functionBrandSecondary),
            ColourToken(name: "functionBrandPrimaryDisabled", path: "Brand / Primary Disabled", color: LighthouseColor.functionBrandPrimaryDisabled),
            ColourToken(name: "functionBadgePrimary", path: "Badge / Primary", color: LighthouseColor.functionBadgePrimary),
            ColourToken(name: "functionBWPrimary", path: "B&W / Primary", color: LighthouseColor.functionBWPrimary),
            ColourToken(name: "functionBWSecondary", path: "B&W / Secondary", color: LighthouseColor.functionBWSecondary),
            ColourToken(name: "functionWhitePrimary", path: "White / Primary", color: LighthouseColor.functionWhitePrimary),
            ColourToken(name: "functionBlackPrimary", path: "Black / Primary", color: LighthouseColor.functionBlackPrimary),
        ]),
        ColourGroup(title: "Accent", tokens: [
            ColourToken(name: "accentGreyPrimary", path: "Grey / Primary", color: LighthouseColor.accentGreyPrimary),
            ColourToken(name: "accentGreySecondary", path: "Grey / Secondary", color: LighthouseColor.accentGreySecondary),
            ColourToken(name: "accentBluePrimary", path: "Blue / Primary", color: LighthouseColor.accentBluePrimary),
            ColourToken(name: "accentBlueSecondary", path: "Blue / Secondary", color: LighthouseColor.accentBlueSecondary),
            ColourToken(name: "accentRedPrimary", path: "Red / Primary", color: LighthouseColor.accentRedPrimary),
            ColourToken(name: "accentRedSecondary", path: "Red / Secondary", color: LighthouseColor.accentRedSecondary),
            ColourToken(name: "accentOrangePrimary", path: "Orange / Primary", color: LighthouseColor.accentOrangePrimary),
            ColourToken(name: "accentOrangeSecondary", path: "Orange / Secondary", color: LighthouseColor.accentOrangeSecondary),
            ColourToken(name: "accentYellowPrimary", path: "Yellow / Primary", color: LighthouseColor.accentYellowPrimary),
            ColourToken(name: "accentYellowSecondary", path: "Yellow / Secondary", color: LighthouseColor.accentYellowSecondary),
            ColourToken(name: "accentGreenPrimary", path: "Green / Primary", color: LighthouseColor.accentGreenPrimary),
            ColourToken(name: "accentGreenSecondary", path: "Green / Secondary", color: LighthouseColor.accentGreenSecondary),
            ColourToken(name: "accentCyanPrimary", path: "Cyan / Primary", color: LighthouseColor.accentCyanPrimary),
            ColourToken(name: "accentCyanSecondary", path: "Cyan / Secondary", color: LighthouseColor.accentCyanSecondary),
            ColourToken(name: "accentTurquoisePrimary", path: "Turquoise / Primary", color: LighthouseColor.accentTurquoisePrimary),
            ColourToken(name: "accentTurquoiseSecondary", path: "Turquoise / Secondary", color: LighthouseColor.accentTurquoiseSecondary),
            ColourToken(name: "accentLimePrimary", path: "Lime / Primary", color: LighthouseColor.accentLimePrimary),
            ColourToken(name: "accentLimeSecondary", path: "Lime / Secondary", color: LighthouseColor.accentLimeSecondary),
            ColourToken(name: "accentIndigoPrimary", path: "Indigo / Primary", color: LighthouseColor.accentIndigoPrimary),
            ColourToken(name: "accentIndigoSecondary", path: "Indigo / Secondary", color: LighthouseColor.accentIndigoSecondary),
            ColourToken(name: "accentPurplePrimary", path: "Purple / Primary", color: LighthouseColor.accentPurplePrimary),
            ColourToken(name: "accentPurpleSecondary", path: "Purple / Secondary", color: LighthouseColor.accentPurpleSecondary),
            ColourToken(name: "accentPinkPrimary", path: "Pink / Primary", color: LighthouseColor.accentPinkPrimary),
            ColourToken(name: "accentPinkSecondary", path: "Pink / Secondary", color: LighthouseColor.accentPinkSecondary),
            ColourToken(name: "accentTanPrimary", path: "Tan / Primary", color: LighthouseColor.accentTanPrimary),
            ColourToken(name: "accentTanSecondary", path: "Tan / Secondary", color: LighthouseColor.accentTanSecondary),
            ColourToken(name: "accentSumacPrimary", path: "Sumac / Primary", color: LighthouseColor.accentSumacPrimary),
            ColourToken(name: "accentSumacSecondary", path: "Sumac / Secondary", color: LighthouseColor.accentSumacSecondary),
            ColourToken(name: "accentFlamingoPrimary", path: "Flamingo / Primary", color: LighthouseColor.accentFlamingoPrimary),
            ColourToken(name: "accentFlamingoSecondary", path: "Flamingo / Secondary", color: LighthouseColor.accentFlamingoSecondary),
            ColourToken(name: "accentSlatePrimary", path: "Slate / Primary", color: LighthouseColor.accentSlatePrimary),
            ColourToken(name: "accentSlateSecondary", path: "Slate / Secondary", color: LighthouseColor.accentSlateSecondary),
            ColourToken(name: "accentFernPrimary", path: "Fern / Primary", color: LighthouseColor.accentFernPrimary),
            ColourToken(name: "accentFernSecondary", path: "Fern / Secondary", color: LighthouseColor.accentFernSecondary),
        ]),
        ColourGroup(title: "Blur", tokens: [
            ColourToken(name: "blurPrimary", path: "Primary", color: LighthouseColor.blurPrimary),
            ColourToken(name: "blurSecondary", path: "Secondary", color: LighthouseColor.blurSecondary),
            ColourToken(name: "blurTertiary", path: "Tertiary", color: LighthouseColor.blurTertiary),
            ColourToken(name: "blurQuaternary", path: "Quaternary", color: LighthouseColor.blurQuaternary),
        ]),
    ]
}

