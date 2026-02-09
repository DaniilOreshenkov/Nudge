import SwiftUI
import FeatureBirthdays
import NotificationsKit

struct ContentView: View {
    let birthdaysFeature: FeatureBirthdaysProviding
    let notificationsKit: NotificationsKitProviding

    var body: some View {
        TabView {
            birthdaysFeature.makeScreen()
                .tabItem { Label("Birthdays", systemImage: "gift") }

            notificationsKit.makeNotificationsSettingsScreen()
                .tabItem { Label("Notifications", systemImage: "bell") }
        }
    }
}
