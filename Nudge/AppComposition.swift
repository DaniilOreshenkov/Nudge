import FeatureBirthdays

final class AppComposition {
    let birthdaysFeature: FeatureBirthdaysProviding

    init() {
        self.birthdaysFeature = FeatureBirthdaysAssembly()
    }
}
