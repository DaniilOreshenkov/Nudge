import UIKit

public extension Int {

    /// Подогнать под ширину базового экрана.
    var fitW: CGFloat {
        let ratio = screenSize.width / baseiPhoneSize.width
        return CGFloat(self) * ratio
    }

    /// Подогнать под высоту базового экрана.
    var fitH: CGFloat {
        let ratio = screenSize.height / baseiPhoneSize.height
        return CGFloat(self) * ratio
    }

    private var baseiPhoneSize: (width: CGFloat, height: CGFloat) { (375, 812) }
    private var screenSize: CGSize { UIScreen.main.bounds.size }
}
