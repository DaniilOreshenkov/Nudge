import SwiftUI
import UserNotifications
import DesignSystem

struct NotificationsSettingsScreen: View {

    @State private var statusText: String = "Status: unknown"

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            DSLabel("Notifications")
                .font(.title2)

            DSLabel(statusText)

            Button("Request permission") {
                requestPermission()
            }

            Button("Schedule test notification (5s)") {
                scheduleTestNotification()
            }

            Button("Remove all pending") {
                UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
                statusText = "Status: removed pending requests"
            }

            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.top, 24)
        .onAppear {
            refreshStatus()
        }
    }

    @MainActor
    private func refreshStatus() {
        Task {
            let settings = await UNUserNotificationCenter.current().notificationSettings()
            statusText = "Status: \(settings.authorizationStatus)"
        }
    }

    private func requestPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if let error {
                    statusText = "Permission error: \(error.localizedDescription)"
                } else {
                    statusText = granted ? "Permission: granted ✅" : "Permission: denied ❌"
                }
            }
        }
    }

    private func scheduleTestNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Nudge"
        content.body = "Test notification ✅"
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(
            identifier: "test_notification",
            content: content,
            trigger: trigger
        )

        UNUserNotificationCenter.current().add(request) { error in
            DispatchQueue.main.async {
                if let error {
                    statusText = "Schedule error: \(error.localizedDescription)"
                } else {
                    statusText = "Scheduled ✅ (wait 5 seconds)"
                }
            }
        }
    }
}
