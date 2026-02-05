import SwiftUI

@main
struct NudgeApp: App {
    private let composition = AppComposition()

    var body: some Scene {
        WindowGroup {
            ContentView(birthdaysFeature: composition.birthdaysFeature)
        }
    }
}
