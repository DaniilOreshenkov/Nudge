import SwiftUI
import FeatureBirthdays

struct ContentView: View {
    let birthdaysFeature: FeatureBirthdaysProviding

    var body: some View {
        birthdaysFeature.makeScreen()
    }
}
