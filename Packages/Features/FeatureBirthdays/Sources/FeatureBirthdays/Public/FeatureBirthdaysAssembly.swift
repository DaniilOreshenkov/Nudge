import SwiftUI

public protocol FeatureBirthdaysProviding {
    func makeScreen() -> AnyView
}

public final class FeatureBirthdaysAssembly: FeatureBirthdaysProviding {
    public init() {}

    public func makeScreen() -> AnyView {
        AnyView(BirthdaysScreen())
    }
}
