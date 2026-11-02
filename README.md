<p align="center"><img src="assets/oros-pd-logo.svg" alt="OROS × Platinum Digital" width="420"></p>

# OROS iOS SDK 1.0.0

OROS puts licensed playback inside the player your app already has. You attach it to your `OrosPlayerView` with one call. From then
on, the SDK checks each track’s license before it plays, keeps the audio in memory only, and reports each listen for the rights
holders. Your app keeps its own UI, queue and sign-in.

| Your app | The OROS SDK, inside your player | OROS, run by Platinum Digital |
|---|---|---|
| Your player, UI and controls | Checks the license at open | Licenses and keys |
| Your queue and catalog | Keeps the audio in memory only | Usage for rights holders |
| Your sign-in and listeners | Reports each listen | |

## Requirements

- iOS 16 or later
- Swift Package Manager

## Install

In Xcode: **File → Add Package Dependencies…**, enter `https://github.com/Platinum-Media/oros-ios`, set the Dependency Rule to **Exact Version** `1.0.0`, and add
the **Oros** product to your app target.

Or in `Package.swift`:

```swift
.package(url: "https://github.com/Platinum-Media/oros-ios", exact: "1.0.0"),
// and in your app target:
.product(name: "Oros", package: "oros-ios")
```

## Attach

On the main actor, attach OROS to your player view:

```swift
import Oros

let h = Oros.attach(playerView, OrosConfig(
    partner: "your-partner-id"
) { req in
    try await api.orosToken(licenseId: req.licenseId,
                            trackId: req.trackId)
})
```

`api.orosToken` stands for your own backend call: your server signs the token with `@oros-sdk/sign`, and the app only asks for it.
Never ship a signing key in an app. The handle `h` then loads and plays your tracks (`h.load(url)`, `h.play()`), and `h.states`
tells your UI what to show.

## Documentation

The developer docs cover tokens, every state your UI shows, and test mode: https://oros-docs.platinum.digital

## About this package

This is a binary package: the framework is served from sdk.oros.platinum.digital with its checksum pinned in Package.swift, which Swift
Package Manager checks on every download.

## License

Preview releases and 1.0.0 are licensed under Apache-2.0; later releases may be offered under different terms. See LICENSE.
