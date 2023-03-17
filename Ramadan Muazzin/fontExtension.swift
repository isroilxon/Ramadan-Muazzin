
import UIKit
enum fontSize {
case Regular, Medium, SemiBold, Bold
}
extension UIFont{
    static func metropolis(weight:fontSize, size:CGFloat) -> UIFont{
        return UIFont(name: "Metropolis-\(weight)", size: size) ?? .systemFont(ofSize: size)
    }
}
