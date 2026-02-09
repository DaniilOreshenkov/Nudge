import FeatureBirthdays
import NotificationsKit

final class AppComposition {
    let birthdaysFeature: FeatureBirthdaysProviding
    let notificationsKit: NotificationsKitProviding

    init() {
        self.birthdaysFeature = FeatureBirthdaysAssembly()
        self.notificationsKit = NotificationsKitAssembly()
    }
}
