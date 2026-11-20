# lighthouse-ios

## Showcase

`Showcase/LighthouseShowcase.xcodeproj` is a demo app for the design system. It uses the package via a local path, so changes to `Sources/` show up straight away.

1. Open `Showcase/LighthouseShowcase.xcodeproj` in Xcode.
2. Run the `LighthouseShowcase` scheme on an iOS 17+ simulator.

The Colours screen lists every `LighthouseColor` token with its light and dark values. Tap a row to copy `LighthouseColor.<name>`.

`LighthouseColor.swift` is generated, so the showcase keeps its own list of tokens in `Showcase/LighthouseShowcase/Colours/ColourGroup.swift`. **Update that file whenever the tokens are regenerated.** Its entry count should match:

```sh
grep -c 'public static let' Sources/Lighthouse/Tokens/LighthouseColor.swift
grep -c 'ColourToken(name' Showcase/LighthouseShowcase/Colours/ColourGroup.swift
```
