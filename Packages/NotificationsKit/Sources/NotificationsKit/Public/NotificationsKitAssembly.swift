import SwiftUI

public final class NotificationsKitAssembly: NotificationsKitProviding {

    public init() {}

    public func makeNotificationsSettingsScreen() -> AnyView {
        AnyView(NotificationsSettingsScreen())
    }
}
